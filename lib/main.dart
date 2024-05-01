import 'package:chat_app/home/home.dart';
import 'package:chat_app/messages/messages.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: primaryTheme,
    home: Messages(),
  ));
}
