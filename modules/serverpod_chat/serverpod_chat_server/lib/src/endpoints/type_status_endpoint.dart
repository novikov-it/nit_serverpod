import 'package:serverpod/serverpod.dart';
import 'package:serverpod_chat_server/serverpod_chat_server.dart';

/// Connect to the type status endpoint to send and receive typing status.
class TypingIndicatorEndpoint extends Endpoint {
  @override
  Future<void> streamOpened(StreamingSession session) async {
    session.log('Typing Indicator Stream Opened', level: LogLevel.debug);
    final userId = await session.authenticated;
    if (userId == null) return;
    session.messages.addListener(
      'typing_indicator_${userId.userId}',
      (message) {
        session.log('New Person typing: ${message.toJson()}',
            level: LogLevel.debug);
        sendStreamMessage(session, message);
      },
    );
    return super.streamOpened(session);
  }

  @override
  Future<void> handleStreamMessage(
    StreamingSession session,
    SerializableModel message,
  ) async {
    session.log('Received message in stream: ${message.toJson()}',
        level: LogLevel.debug);
    if (message is TypeIndicator) {
      session.log('Received new typing indications: ${message.toJson()}',
          level: LogLevel.debug);
      final ids = message.channel.split('_');
      final reciverId = ids.last == message.typerID.toString()
          ? ids[ids.length - 2]
          : ids.last;

      session.log('shows indicator to $reciverId', level: LogLevel.debug);

      session.messages.postMessage('typing_indicator_$reciverId', message);
    }
  }
}
