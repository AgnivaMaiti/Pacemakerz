import 'package:flutter/material.dart';
import 'dart:async';

class PracticeModeScreen extends StatefulWidget {
  const PracticeModeScreen({super.key});

  @override
  _PracticeModeScreenState createState() => _PracticeModeScreenState();
}

class _PracticeModeScreenState extends State<PracticeModeScreen> {
  List<Question> practiceQuestions = [
    Question(
      'The Right to have a legally registered name is ensured by which article?',
      ['Article 7', 'Article 8', 'Article 12', 'Article 23'],
      'Article 8',
    ),
    Question(
      'Why is having a nationality important for children?',
      [
        'It allows them to travel freely.',
        'It ensures they belong to a country.',
        'It provides them with free education.',
        'It allows them to work at a young age'
      ],
      'It ensures they belong to a country.',
    ),
    Question(
      'What does "public record" mean in the context of a childs identity?',
      [
        'It refers to a childs personal diary.',
        'It means the childs identity is confidential.',
        'It means the childs identity is documented and accessible',
        'It refers to a childs right to privacy.'
      ],
      'It means the childs identity is documented and accessible',
    ),
    Question(
      'What does Article 23 of child rights primarily cover?',
      [
        'Right to education',
        'Right to health',
        'Right to a family life',
        'Right to an opinion'
      ],
      'Right to health',
    ),
    Question(
      'Why is protection from harmful habits, including drugs, important for childrens health?',
      [
        'To ensure they have a good social life',
        'To prevent them from making friends with the wrong people',
        'To safeguard their physical and mental well-being',
        'To encourage them to take more risks'
      ],
      'To safeguard their physical and mental well-being',
    ),
    Question(
      'Which article elaborates on the access to special care and support for children with special needs?',
      ['Article 12', 'Article 23', 'Article 24', 'Article 40'],
      'Article 24',
    ),
    Question(
      'What is critical about the right to free primary education for children?',
      [
        'It helps them develop discipline',
        'It provides free textbooks',
        'It ensures they have many holidays',
        'It covers secondary education'
      ],
      'It helps them develop discipline',
    ),
    Question(
      'What does Article 28 protect children from in educational settings?',
      [
        'Violence and abuse',
        'Competition and exams',
        'Homework and projects',
        'Lack of playtime'
      ],
      'Violence and abuse',
    ),
    Question(
      'What type of environment should primary education provide for children?',
      [
        'Safe and healthy',
        'Competitive and challenging',
        'Strict and disciplined',
        'Quiet and isolated'
      ],
      'Safe and healthy',
    ),
    Question(
      'Under what circumstances should children live with their parents?',
      [
        'Always, regardless of any situation',
        'Until it is harmful to them',
        'Only if they want to',
        'Only if their parents are wealthy'
      ],
      'Until it is harmful to them',
    ),
    Question(
      'What is "family reunification" as mentioned in child rights?',
      [
        'A family vacation',
        'A family celebration',
        'Permission for family members living in different countries to renew contact',
        'A family reunion party'
      ],
      'Permission for family members living in different countries to renew contact',
    ),
    Question(
      'What rights do children have if they do not have access to a family life?',
      [
        'No rights at all',
        'Rights to special care and protection',
        'Rights to their own property',
        'Rights to a job'
      ],
      'Rights to special care and protection',
    ),
    Question(
      'Which forms of violence must children be protected from according to Article 19?',
      [
        'Verbal violence only',
        'Physical violence only',
        'All forms of violence, including sexual and physical',
        'No forms of violence'
      ],
      'All forms of violence, including sexual and physical',
    ),
    Question(
      'What does Article 34 prohibit in terms of sexual exploitation?',
      [
        'All forms of sexual activity',
        'Sale of children, child prostitution, and child pornography',
        'Dating and relationships',
        'Flirting and teasing'
      ],
      'Sale of children, child prostitution, and child pornography',
    ),
    Question(
      'Can violence be used as a means of discipline according to child rights?',
      [
        'Yes, always',
        'Yes, if its not severe',
        'No, violence should never be used as discipline',
        'Only for teenagers'
      ],
      'No, violence should never be used as discipline',
    ),
    Question(
      'What rights do children have in expressing their opinions according to Article 12?',
      [
        'No rights to express opinions',
        'Rights to voice opinions, free of criticism or contempt',
        'Rights to express opinions only to adults',
        'Rights to express opinions only in writing'
      ],
      'Rights to voice opinions, free of criticism or contempt',
    ),
    Question(
      'When should adults consider a childs opinion, according to child rights?',
      [
        'Never, childrens opinions are not important',
        'Only if the childs opinion is based on facts',
        'Always, regardless of the childs age and maturity',
        'Only if the childs opinion is approved by their parents'
      ],
      'Always, regardless of the childs age and maturity',
    ),
    Question(
      'What must children avoid when exercising their freedom of expression?',
      [
        'Expressing their opinions',
        'Sharing knowledge',
        'Harming others with their opinions and knowledge',
        'Keeping quiet'
      ],
      'Harming others with their opinions and knowledge',
    ),
    Question(
      'How can armed conflict affect children according to child rights?',
      [
        'It makes them wealthy',
        'It has no effect on children',
        'It can convert them into refugees or prisoners',
        'It improves their morale'
      ],
      'It can convert them into refugees or prisoners',
    ),
    Question(
      'What must the government ensure when rehabilitating children affected by war?',
      [
        'They should force children to participate in armed struggles',
        'They should provide children with weapons',
        'They should ignore the childrens needs',
        'They should correct the damage in a nurturing safe environment'
      ],
      'They should correct the damage in a nurturing safe environment',
    ),
    Question(
      'Can children be forced to participate in armed struggles according to child rights?',
      [
        'Yes, always',
        'Yes, if they are above a certain age',
        'No, they should never be forced',
        'Only if they volunteer'
      ],
      'No, they should never be forced',
    ),
    Question(
      'Why is protection from violence critical to freeing children from exploitation?',
      [
        'Violence leads to better discipline',
        'Violence is a form of education',
        'Exploitation is usually achieved through violent means',
        'Violence helps children become more resilient'
      ],
      'Exploitation is usually achieved through violent means',
    ),
    Question(
      'Can children be made to work in difficult or dangerous conditions?',
      [
        'Yes, if they agree to it',
        'Yes, if they are paid well',
        'No, they can only volunteer to do safe chores',
        'Yes, if its for a good cause'
      ],
      'No, they can only volunteer to do safe chores',
    ),
    Question(
      'What is prohibited as a form of sexual exploitation according to Article 34?',
      [
        'Dating',
        'Flirting',
        'Sale of children, child prostitution, and child pornography',
        'Hugging'
      ],
      'Sale of children, child prostitution, and child pornography',
    ),
    // Add more questions here
  ];

  int questionIndex = 0;
  int correctAnswers = 0;
  int score = 0;
  String userAnswer = '';
  String correctAnswer = '';
  int _secondsRemaining = 10; // Set the initial time limit (e.g., 10 seconds)
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    shuffleQuestions();
    startTimer(); // Start the timer when the question is loaded
  }

  void shuffleQuestions() {
    setState(() {
      practiceQuestions.shuffle();
    });
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          // Time's up! Handle this event (e.g., mark the answer as incorrect).
          checkAnswer(""); // Pass an empty answer to indicate time's up.
          moveToNextQuestion(); // Move to the next question.
        }
      });
    });
  }

  void checkAnswer(String selectedAnswer) {
    if (userAnswer.isEmpty) {
      correctAnswer = practiceQuestions[questionIndex].correctAnswer;
      userAnswer = selectedAnswer;

      if (userAnswer == correctAnswer) {
        setState(() {
          correctAnswers++;
          score++;
        });
      } else {
        // If the answer is incorrect, delay moving to the next question.
        Future.delayed(const Duration(seconds: 2), () {
          moveToNextQuestion();
        });
      }
    }
  }

  void moveToNextQuestion() {
    if (questionIndex < practiceQuestions.length - 1) {
      setState(() {
        questionIndex++;
        _secondsRemaining = 10; // Reset the timer for the next question
        _timer.cancel(); // Cancel the current timer
        startTimer(); // Start a new timer for the next question
        userAnswer = '';
        correctAnswer = '';
      });
    } else {
      showResults();
    }
  }

  void showResults() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Practice Session Complete'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  'You got $correctAnswers out of ${practiceQuestions.length} questions correct.'),
              Text('Your Score: $score out of ${practiceQuestions.length}'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                resetPracticeSession();
                shuffleQuestions();
              },
            ),
          ],
        );
      },
    );
  }

  void resetPracticeSession() {
    setState(() {
      questionIndex = 0;
      correctAnswers = 0;
      score = 0;
      userAnswer = '';
      correctAnswer = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practice Mode'),
      ),
      backgroundColor:
          Colors.lightBlue, // Change the background color to light blue
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Practice Question ${questionIndex + 1}: ${practiceQuestions[questionIndex].question}',
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center, // Center-align the question text
            ),
          ),
          Text(
            'Time Remaining: $_secondsRemaining seconds',
            textAlign: TextAlign.center, // Center-align the time remaining text
          ),
          Column(
            children: practiceQuestions[questionIndex].options.map((option) {
              bool isCorrect = option == correctAnswer;
              bool isSelected = option == userAnswer;

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Material(
                  color: isSelected
                      ? (isCorrect ? Colors.green : Colors.red)
                      : Colors.white,
                  child: InkWell(
                    onTap: () {
                      if (userAnswer.isEmpty) {
                        checkAnswer(option);
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        option,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: isSelected ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold, // Make options bold
                        ),
                        textAlign:
                            TextAlign.center, // Center-align the options text
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          if (userAnswer.isNotEmpty ||
              questionIndex == practiceQuestions.length - 1)
            ElevatedButton(
              onPressed: moveToNextQuestion,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink, // Change the button color to pink
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: Text(
                  'Next Question',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          Text(
            'Score: $score',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center, // Center-align the score text
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when disposing of the screen
    super.dispose();
  }
}

class Question {
  final String question;
  final List<String> options;
  final String correctAnswer;

  Question(this.question, this.options, this.correctAnswer);
}
