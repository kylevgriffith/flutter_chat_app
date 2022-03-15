import 'package:flutter/material.dart';
import 'package:flutter_chat_app/models/message-dto.dart';
import 'package:flutter_chat_app/widgets/chat_room/message_card.dart';

import '../../models/user.dart';

String fakeUserId = "1";

class MessagesList extends StatelessWidget {
  final List<MessageDTO> messagesList = [
    MessageDTO.create(
        user: User(
            id: "1",
            name: "Naruto Uzumaki",
            email: "a",
            avatar:
                "https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/7/11/narutossagemode-15944657133061535033027.png"),
        message: "Mã hóa cửu vỹ bằng base64"),
    MessageDTO.create(
        user: User(
            id: "1",
            name: "Naruto Uzumaki",
            email: "a",
            avatar:
                "https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/7/11/narutossagemode-15944657133061535033027.png"),
        message: "Mã hóa cửu vỹ bằng sha256"),
    MessageDTO.create(
        user: User(
            id: "3",
            name: "Naruto Uzumaki",
            email: "a",
            avatar:
                "https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/7/11/narutossagemode-15944657133061535033027.png"),
        message: "Mã hóa cửu vỹ bằng hex"),
    MessageDTO.create(
        user: User(
            id: "3",
            name: "Naruto Uzumaki",
            email: "a",
            avatar:
                "https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/7/11/narutossagemode-15944657133061535033027.png"),
        message: "Mã hóa cửu vỹ bằng hex"),
    MessageDTO.create(
        user: User(
            id: "3",
            name: "Naruto Uzumaki",
            email: "a",
            avatar:
                "https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/7/11/narutossagemode-15944657133061535033027.png"),
        message: "Mã hóa cửu vỹ bằng hex"),
    MessageDTO.create(
        user: User(
            id: "1",
            name: "Naruto Uzumaki",
            email: "a",
            avatar:
                "https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2020/7/11/narutossagemode-15944657133061535033027.png"),
        message: "Mã hóa cửu vỹ bằng hex")
  ];

  MessagesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: messagesList.length,
      itemBuilder: (context, index) {
        bool isPreviousUser = false;
        if (index > 0) {
          if (messagesList[index - 1].user.id == messagesList[index].user.id) {
            isPreviousUser = true;
          }
        }
        debugPrint("$isPreviousUser");
        return MessageCard(
          message: messagesList[index],
          isUserSent: messagesList[index].user.id == fakeUserId,
          isPreviousUser: index > 0 &&
              messagesList[index - 1].user.id == messagesList[index].user.id,
        );
      },
    ));
  }
}