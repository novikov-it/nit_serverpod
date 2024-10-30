import 'package:chatview/chatview.dart';

class ChatCustomMessageModel extends CustomMessageModel {
  ChatCustomMessageModel({
    required title,
    required imageUrl,
    required price,
    onTap,
    titleTextStyle,
    priceTextStyle,
  }) : super(
          title: title,
          imageUrl: imageUrl,
          price: price,
          onTap: onTap,
          titleTextStyle: titleTextStyle,
          priceTextStyle: priceTextStyle,
        );
}
