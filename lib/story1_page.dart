import 'package:flutter/material.dart';

class Story1Page extends StatefulWidget {
  const Story1Page({super.key});

  @override
  _Story1PageState createState() => _Story1PageState();
}

class _Story1PageState extends State<Story1Page> {
  List<Map<String, dynamic>> conversations = [
    {
      'text': "Priya: Oh, hey Dikshita! What's up?",
      'image': 'assets/normal_priya.png',
    },
    {
      'text': "Dikshita: Hey...",
      'image': 'assets/Dikshita_normal.png',
    },
    {
      'text': "Priya: What happened? You look sad...",
      'image': 'assets/normal_priya.png',
    },
    {
      'text': "Dikshita: Yeah...",
      'image': 'assets/Dikshita_normal.png',
    },
    {
      'text': "Priya: Tell me, what's wrong?",
      'image': 'assets/normal_priya.png',
    },
    {
      'text': "Dikshita: My parents... they never let me do anything!",
      'image': 'assets/Dikshita_annoyed.png',
    },
    {
      'text': "Priya: Why? What did they not let you do?",
      'image': 'assets/normal_priya.png',
    },
    {
      'text':
          "Dikshita: I wanted to watch Chhota Bheem last night, but mom said it was too late and I should sleep!",
      'image': 'assets/Dikshita_annoyed.png',
    },
    {
      'text': "Dikshita: 'Kids shouldn't stay up too late at night!'",
      'image': 'assets/Dikshita_normal.png',
    },
    {
      'text':
          "Dikshita: She's always like that... Children shouldn't do this, children shouldn't do that.... I'm tired of this!",
      'image': 'assets/Dikshita_angry.png',
    },
    {
      'text': "Priya: Hmm... I see...",
      'image': 'assets/normal_priya.png',
    },
    {
      'text': "Dikshita: I wish I was a grown-up!",
      'image': 'assets/Dikshita_normal.png',
    },
    {
      'text':
          "Priya: Hmm... Being a child can seem very tiresome at times, but did you know, our Constitution has rights especially made for kids?",
      'image': 'assets/happy_priya.png',
    },
    {
      'text': "Dikshita: Huh, really?",
      'image': 'assets/Dikshita_happy.png',
    },
    {
      'text':
          "Priya: Yep! Child rights are an important part of the Constitution of India.",
      'image': 'assets/happy_priya.png',
    },
    {
      'text': "Dikshita: I see...",
      'image': 'assets/Dikshita_normal.png',
    },
    {
      'text':
          "Priya: According to Child Labor (Prohibition and Regulation) Act 1986, a 'child' is defined as a person below 14 years of age.",
      'image': 'assets/surprised_priya.png',
    },
    {
      'text':
          "Dikshita: Oh! So it will take me 4 more years to become an adult....",
      'image': 'assets/Dikshita_happy.png',
    },
    {
      'text':
          "Priya: Actually, according to Article 326 of the Constitution of India, an adult is a citizen of India who is at least 18 years old.",
      'image': 'assets/surprised_priya.png',
    },
    {
      'text': "Dikshita: Ow... :(",
      'image': 'assets/Dikshita_annoyed.png',
    },
    {
      'text': "Priya: Tell me, do you like your name?",
      'image': 'assets/happy_priya.png',
    },
    {
      'text':
          "Dikshita: Of course! My mom chose it for me; she said... I still hate her though! Hmph!",
      'image': 'assets/Dikshita_happy.png',
    },
    {
      'text': "Priya: Haha... are you sure about that?",
      'image': 'assets/happy_priya.png',
    },
    {
      'text': "Dikshita: Okay... maybe not thaaaaat much but...",
      'image': 'assets/Dikshita_annoyed.png',
    },
    {
      'text': "Priya: laughs",
      'image': 'assets/happy_priya.png',
    },
    {
      'text':
          "Priya: Okay, so did you know that according to Article 7 and 8 of the UNCRC, children are entitled to a name, legally registered with the government, and a nationality, which means they need to belong to a country.",
      'image': 'assets/normal_priya.png',
    },
    {
      'text':
          "Priya: Further, they must have the right to an identity, in the form of a public record, like we have our ID cards in school, the government keeps a record of our identity too! I'm sure you know what the AADHAR card is?",
      'image': 'assets/normal_priya.png',
    },
    {
      'text': "Dikshita: Yes!",
      'image': 'assets/Dikshita_normal.png',
    },
    {
      'text':
          "Priya: This ensures national support, as well as access to social services.",
      'image': 'assets/happy_priya.png',
    },
    {
      'text': "Dikshita: Wow! I didn't know that... thanks, Priya!",
      'image': 'assets/Dikshita_happy.png',
    },
    {
      'text':
          "Priya: Hmm... Now maybe you should go to your mom, say sorry to her, and maybe she'll let you watch Doraemon with me!",
      'image': 'assets/happy_priya.png',
    },
    {
      'text': "Dikshita: Yes!",
      'image': 'assets/Dikshita_happy.png',
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
        title: const Text('The Right to an Identity'),
      ),
      backgroundColor:
          Colors.lightBlue, // Change the background color to light blue
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              conversations[currentConversationIndex]['image'],
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 20),
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
