import 'package:flutter/material.dart';
import 'story1_page.dart'; // Import the Story1Page
import 'story2_page.dart'; // Import the Story2Page

class StoryModePage extends StatelessWidget {
  const StoryModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Story Mode'),
      ),
      backgroundColor:
          Colors.lightBlue, // Change the background color to light blue
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Story1Page()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink, // Change the button color to pink
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: Text(
                  'The Right to an Identity',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Story2Page()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink, // Change the button color to pink
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: Text(
                  'The Right to Health',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add spacing between buttons
            // Add buttons for other stories similarly
          ],
        ),
      ),
    );
  }
}
