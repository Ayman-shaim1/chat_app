import 'package:chat_app/shared/styled_text.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/messages/messages.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => const Messages(),
            ));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Image.asset(
              'assets/img/user.png',
              width: 50,
            ),
            const SizedBox(
              width: 30,
            ),
            StyledHeading("Jhon Doe"),
            const SizedBox(
              width: 150,
            ),
            Expanded(
                child: Icon(
              Icons.arrow_forward,
              color: AppColors.primaryColor,
            ))
          ],
        ),
      ),
    );
  }
}
