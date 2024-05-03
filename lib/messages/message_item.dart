import 'package:chat_app/shared/styled_text.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(5)),
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    StyledText(
                        "Hello world,Hello world,Hello world,Hello world",
                        color: Colors.white),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(DateTime.now().toString()),
                ),
                TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.zero,
                  )),
                  onPressed: () {},
                  child: const Text(
                    "x",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
