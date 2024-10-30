import 'package:chatview/chatview.dart';
import 'package:intl/intl.dart';
import 'package:serverpod_auth_client/module.dart';
import 'package:serverpod_chat_client/serverpod_chat_client.dart';

ReplyMessage toFormat(Map<String, String> json) {
  return ReplyMessage(
    messageId: json['id'] ?? '',
    message: json['message'] ?? '',
    replyBy: json['replyBy'] ?? '',
    replyTo: json['replyTo'] ?? '',
    messageType:
        MessageType.tryParse(json['messageType'] ?? '') ?? MessageType.text,
    voiceMessageDuration: null,
  );
}

Map<String, String> toDeFormat(ReplyMessage json) {
  return {
    'message': json.message,
    'replyBy': json.replyBy,
    'replyTo': json.replyTo,
    'id': json.messageId,
    'messageType': json.messageType.toString(),
  };
}

/// Converts a message to UI message.
extension ChatMessageExtension on ChatMessage {
  MessageType _getMessageType() {
    if (attachments?.firstOrNull?.messageType.isVoice == true) {
      return MessageType.voice;
    } else if (attachments?.firstOrNull?.messageType.isImage == true) {
      return MessageType.image;
    } else if (attachments?.firstOrNull?.attachmentType ==
        ChatAttachmentTypeEnum.adShare) {
      return MessageType.custom;
    } else {
      return MessageType.text;
    }
  }

  int? getCustomEntityId() {
    if (attachments?.firstOrNull?.attachmentType ==
            ChatAttachmentTypeEnum.adShare &&
        attachments?.firstOrNull?.fileName != null) {
      return int.parse(attachments!.firstOrNull!.fileName);
    }
    return null;
  }

  /// Converts to UI message.
  Message convertToUIMessage(bool isRead) {
    return Message(
      id: id.toString(),
      message: _getMessageType() == MessageType.text
          ? message
          : attachments!.firstOrNull!.url,
      createdAt: time.toLocal(),
      sentBy: sender.toString(),
      status: isRead ? MessageStatus.read : MessageStatus.delivered,
      replyMessage: replyMessages != null
          ? toFormat(replyMessages!)
          : const ReplyMessage(),
      messageType: attachments?.firstOrNull?.messageType ?? MessageType.text,
      voiceMessageDuration: const Duration(seconds: 40),
      reaction: Reaction(
        reactions: reactions ?? [],
        reactedUserIds: reactionsUsers ?? [],
      ),
      customEntityId: getCustomEntityId(),
    );
  }
}

extension MessageTypeExt on ChatMessageAttachment {
  MessageType get messageType {
    if (contentType == 'image') {
      return MessageType.image;
    } else if (contentType == 'audio') {
      return MessageType.voice;
    } else if (attachmentType == ChatAttachmentTypeEnum.adShare) {
      return MessageType.custom;
    } else {
      return MessageType.text;
    }
  }
}

extension DateExtension on DateTime {
  String get formatDate {
    final currentDate = DateTime.now();
    final localDateTime = toLocal(); // Конвертируем в локальное время

    final yesterday = currentDate.subtract(const Duration(days: 1));

    if (localDateTime.year == currentDate.year &&
        localDateTime.month == currentDate.month &&
        localDateTime.day == currentDate.day) {
      return 'сегодня, ${DateFormat.Hm('ru').format(localDateTime)}';
    } else if (localDateTime.year == yesterday.year &&
        localDateTime.month == yesterday.month &&
        localDateTime.day == yesterday.day) {
      return 'вчера, ${DateFormat.Hm('ru').format(localDateTime)}';
    } else {
      return DateFormat('d MMMM, H:mm', 'ru').format(localDateTime);
    }
  }

  String get formatLastTimeOnlineDate {
    final currentDate = DateTime.now();
    final localDateTime = toLocal(); // Конвертируем в локальное время

    final yesterday = currentDate.subtract(const Duration(days: 1));

    if (localDateTime.year == currentDate.year &&
        localDateTime.month == currentDate.month &&
        localDateTime.day == currentDate.day) {
      return 'сегодня в ${DateFormat.Hm('ru').format(localDateTime)}';
    } else if (localDateTime.year == yesterday.year &&
        localDateTime.month == yesterday.month &&
        localDateTime.day == yesterday.day) {
      return 'вчера в ${DateFormat.Hm('ru').format(localDateTime)}';
    } else {
      return DateFormat('d MMMM, H:mm', 'ru').format(localDateTime);
    }
  }
}
