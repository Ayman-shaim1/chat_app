import 'package:chat_app/new/user_item.dart';
import 'package:chat_app/shared/styled_text.dart';
import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back)),
              StyledTitle("New Convertation"),
              const SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    User(),
                    User(),
                    User(),
                    User(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
