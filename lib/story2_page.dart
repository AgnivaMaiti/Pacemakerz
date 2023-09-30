import 'package:flutter/material.dart';

class Story2Page extends StatefulWidget {
  const Story2Page({super.key});

  @override
  _Story2PageState createState() => _Story2PageState();
}

class _Story2PageState extends State<Story2Page> {
  List<Map<String, dynamic>> conversations = [
    {
      'text': "Dikshita: Priya di! Priya di!",
      'image': 'assets/Dikshita_normal.png',
    },
    {
      'text': "Priya: Huh?",
      'image': 'assets/normal_priya.png',
    },
    {
      'text': "Dikshita: Here! Please help!",
      'image': 'assets/Dikshita_annoyed.png',
    },
    {
      'text': "Priya: What happened here!?",
      'image': 'assets/surprised_priya.png',
    },
    {
      'text':
          "Dikshita: Some bullies made Rita fall from her wheelchair, please help!",
      'image': 'assets/Dikshita_normal.png',
    },
    {
      'text':
          "Priya and Dikshita help pick Rita up and place her on her wheelchair.",
      'image': 'assets/Understanding_Anshita_Sarojini.png',
    },
    {
      'text': "Rita: still sobbing Thank you...",
      'image': 'assets/Rita_crying.png',
    },
    {
      'text': "Priya: Who did this?",
      'image': 'assets/angry_priya.png',
    },
    {
      'text': "Dikshita: Anshita and Sarojini!",
      'image': 'assets/Dikshita_normal.png',
    },
    {
      'text':
          "Priya: Call them right here! Rita, wait, I have bandaids in my pouch.",
      'image': 'assets/normal_priya.png',
    },
    {
      'text': "Dikshita with Anshita and Sarojini: Here they are!",
      'image': 'assets/Dikshita_normal.png',
    },
    {
      'text': "Anshita and Sarojini: Sorry di...",
      'image': 'assets/regret_Anshita_Sarojini.png',
    },
    {
      'text': "Priya: Why did you push Rita?",
      'image': 'assets/angry_priya.png',
    },
    {
      'text': "Anshita: We didn't mean to hurt her, it was just a prank...",
      'image': 'assets/regret_Anshita_Sarojini.png',
    },
    {
      'text':
          "Priya: It is not a prank to make someone fall off their wheelchair! Don't apologize to me, apologize to Rita.",
      'image': 'assets/angry_priya.png',
    },
    {
      'text': "Anshita and Sarojini: Sorry Rita...",
      'image': 'assets/regret_Anshita_Sarojini.png',
    },
    {
      'text': "Priya: Don't ever repeat it again or I'm telling your parents!",
      'image': 'assets/angry_priya.png',
    },
    {
      'text': "Anshita and Sarojini: Sorry... We won't ever repeat it again...",
      'image': 'assets/regret_Anshita_Sarojini.png',
    },
    {
      'text':
          "Priya: Did you know Articles 23 and 24 on child rights in the UNCRC constitution elaborate on the access to special care and support for children with special needs.",
      'image': 'assets/normal_priya.png',
    },
    {
      'text':
          "Priya: Article 21 of the Indian constitution ensures the right to life and liberty to each individual. If these constitutions can accommodate friends like Rita, why can't we?",
      'image': 'assets/normal_priya.png',
    },
    {
      'text': "Anshita, Sarojini nod.",
      'image': 'assets/Understanding_Anshita_Sarojini.png',
    },
    {
      'text':
          "Priya: These articles also safeguard quality health care, including drinking water, nutrition, and a safe environment for every child to develop to the best of their potential.",
      'image': 'assets/normal_priya.png',
    },
    {
      'text': "Dikshita: So that means we have Right to Health?",
      'image': 'assets/Dikshita_happy.png',
    },
    {
      'text':
          "Priya: Exactly! Every child has the Right to Health, just like adults.",
      'image': 'assets/happy_priya.png',
    },
    {
      'text':
          "Priya: Medical care, nutrition, protection from harmful habits (including drugs) and safe working environments are covered under the right to health.",
      'image': 'assets/normal_priya.png',
    },
    {
      'text': "Rita: I didn't know all that!",
      'image': 'assets/Rita_normal.png',
    },
    {
      'text': "Anshita and Sarojini: We didn't either!",
      'image': 'assets/Understanding_Anshita_Sarojini.png',
    },
    {
      'text':
          "Dikshita: Thanks for telling us Priya di! Guys, want to play chopsticks?",
      'image': 'assets/Dikshita_happy.png',
    },
    {
      'text': "Rita: Sure!",
      'image': 'assets/Rita_happy.png',
    },
    {
      'text': "Anshita and Sarojini: Sure!",
      'image': 'assets/happy_Anshita_Sarojini.png',
    },
  ];

  int currentConversationIndex = 0;

  void goToNextConversation() {
    if (currentConversationIndex < conversations.length - 1) {
      setState(() {
        currentConversationIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Right to Health'),
      ),
      backgroundColor:
          Colors.lightBlue, // Change the background color to light blue
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              conversations[currentConversationIndex]['image'],
              height: 200, // Adjust the height as needed
              width: 200, // Adjust the width as needed
            ),
            const SizedBox(height: 20), // Add spacing between image and text box
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Center-align text
                  children: [
                    Text(
                      conversations[currentConversationIndex]['text'],
                      style: const TextStyle(
                        fontSize: 18, // Increase font size
                      ),
                      textAlign: TextAlign.center, // Center-align text
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                goToNextConversation();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink, // Change button color to pink
              ),
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
