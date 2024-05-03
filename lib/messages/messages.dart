import 'package:chat_app/messages/message_item.dart';
import 'package:chat_app/shared/styled_text.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header :
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 35,
                    ),
                    Image.asset(
                      "assets/img/image1.png",
                      width: 50,
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            StyledHeading(
                              "Jhon Doe",
                            ),
                            StyledText(
                              "on line",
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Body :
              Expanded(
                child: SingleChildScrollView(
                  reverse: true,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    child: Column(
                      children: [
                        // messages :
                        // ...
                        Message(),
                        Message(),
                        Message(),
                        Message(),
                        Message(),
                      ],
                    ),
                  ),
                ),
              ),
              // Footer :
              Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: "enter message ...",
                      ),
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Icon(Icons.send, color: AppColors.primaryColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

