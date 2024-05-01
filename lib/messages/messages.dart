import 'package:chat_app/shared/styled_text.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "enter message ...",
                    ),
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("hello world"),
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
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(5)),
          padding: const EdgeInsets.all(16),
          child: StyledText("Hello world,Hello world,Hello world,Hello world",
              color: Colors.white)),
    );
  }
}
