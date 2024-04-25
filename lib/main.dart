import 'package:flutter/material.dart';
import 'package:flutter_application_chatbot/chat_screen.dart';
import 'package:flutter_application_chatbot/home_chatbot.dart';

import 'package:google_generative_ai/google_generative_ai.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
      title: ' Bot',
      home:  HomeScreen(),
    );
  }
}