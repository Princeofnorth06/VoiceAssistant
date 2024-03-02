import 'package:flutter/material.dart';
import 'package:rap/group.dart';
import 'package:rap/home_page.dart';
//import 'package:rap/pattete.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'R.A.P',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const SizedBox(
                height: 100,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: Text(
                    'R.A.P',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
              Container(
                height: 8,
                color: Colors.black,
              ),

              ListTile(
                title: const Text('Group Members',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Group()),
                  );
                },
              ),
              Container(
                height: 8,
                color: Colors.black,
              ),
              // Add more list tiles as needed
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.only(left: 12, right: 5, top: 10),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Project:-\n ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "Voice Assistant App with ChatGPT & DALL·E\n Integration\n\n",
                ),
                TextSpan(
                  text: "Objective:-\n",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "Developed a voice assistant mobile app using Flutter, Dart, ChatGPT, and DALL·E APIs for text and image understanding.\n",
                ),
                TextSpan(
                    text: "Key Features:\n",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        "1. Voice interaction enabling user communication through voice commands.\n"
                        "2. Integrated ChatGPT for text-based responses and DALL·E for image generation.\n"
                        "3. Intuitive UI/UX design for seamless interaction and display of responses.\n\n"),
                TextSpan(
                    text: "Technical Skills:-\n",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text:
                      "1. Proficient in Flutter, Dart for cross-platform app development.\n"
                      "2. API integration and handling (ChatGPT, DALL·E) for AI-powered functionalities.\n"
                      "3. Voice input processing and UI development for enhanced user experience.\n\n",
                ),
                TextSpan(
                  text: "Achievements:-\n",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      "1. Successfully implemented natural language understanding and image generation using AI APIs.\n"
                      "2. Created a personalized assistant with error handling for improved user interaction.\n\n",
                ),
                TextSpan(
                    text: "Outcome:-\n",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        "Developed and deployed an innovative voice assistant app, combining AI technologies for dynamic text and image-based responses."),
              ],
            ),
          ),
        ));
  }
}
