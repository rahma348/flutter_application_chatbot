// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_chatbot/chat_screen.dart';
import 'package:flutter_application_chatbot/suggetion_box.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.white,
            Color.fromARGB(255, 156, 188, 188)
          ], // Set your gradient colors here
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: 
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                
                
                Container(
                  alignment: Alignment.center,
                   width: 290,
                   height: 200,
                
                  child: 
                   Stack(
                      fit: StackFit.expand,

                     children:[
                      
                              Image.asset("assets/message.jpg",
                                                       width: 290, 
                                                       height: 200,
                                                  fit: BoxFit.fill,
                                                  ),
                                          
                       Positioned.fill(
                      
                         child:
                         
                          Align(
                            alignment: Alignment.center,
                            child: 
                          
                                      const Text(
                    "Welcome!",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Cera Pro",
                        fontSize: 40),
                  ),


                            
                          ),
                       ),
                     
              ],),
                
                  
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                   width: double.infinity,
                  height: 150,
                  
                  child: CircleAvatar(
                    
                    child: Image.asset(
                      'assets/chatbot.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "Bot",
                    style: TextStyle(
                        fontFamily: "Cera Pro",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: AnimatedTextKit(
                      displayFullTextOnTap: true,
                      isRepeatingAnimation: false,
                      repeatForever: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          "How may i help you today?",
                          speed: const Duration(milliseconds: 50),
                          textStyle: const TextStyle(
                              fontFamily: "Cera Pro",
                              fontSize: 28,
                              color: Colors.black),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ChatScreen();
              }));
            },
            elevation: 20,
            // backgroundColor: Colors.white,
            tooltip: "Bot",
            child: Image.asset(
              "assets/chat.jpg",
              scale: Checkbox.width,
            )),
      ),
    );
  }
}
