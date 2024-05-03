import 'package:chat_app/messages/messages.dart';
import 'package:chat_app/shared/styled_text.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';

class Convertation extends StatelessWidget {
  const Convertation(
    this.convertation, {
    super.key,
  });

  final Map<String, dynamic> convertation;

  String cutMessage(String message) {
    if (message.length > 75) return "${message.substring(0, 75)}...";
    return message;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // go to messages screen :
        // ...
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => const Messages(),
            ));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Image.asset(
              convertation['userImage'],
              width: 50,
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StyledHeading(
                    convertation['userName'],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  StyledText(cutMessage(convertation['lastMessage']))
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(convertation['timeMessage'],
                    style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 5,
                ),
                convertation['nbrMsgNotSeen'] != null
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 7),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Text(convertation['nbrMsgNotSeen'].toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold)))
                    : Text(""),
              ],
            )
          ],
        ),
      ),
    );
  }
}
