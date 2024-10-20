// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class AIQAInterface extends StatelessWidget {
  final String question;
  final List<String> sources;
  final String answer;
  final List<String> relatedQuestions;

  const AIQAInterface({
    Key? key,
    required this.question,
    required this.sources,
    required this.answer,
    required this.relatedQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 60,
            color: Colors.grey[900],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.home, color: Colors.grey),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.search, color: Colors.grey),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.book, color: Colors.grey),
                      onPressed: () {},
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.settings, color: Colors.grey),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          // Main content
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    question,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Sources',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: sources
                        .map((source) => Chip(
                              label: Text(source,
                                  style: TextStyle(color: Colors.white)),
                              backgroundColor: Colors.grey[800],
                            ))
                        .toList(),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Answer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    answer,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Related',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  ...relatedQuestions
                      .map((question) => ExpansionTile(
                            title: Text(question,
                                style: TextStyle(color: Colors.white)),
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: Text('Answer for $question',
                                    style: TextStyle(color: Colors.white70)),
                              ),
                            ],
                          ))
                      .toList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Example usage
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AIQAInterface(
        question: 'What is testing?',
        sources: ['Fast.com', 'Test', 'Merriam-Webster'],
        answer:
            'Testing can refer to various assessments or evaluations to measure knowledge, skills, abilities, or the presence of disease or infection. It can involve a series of questions, exercises, or practical activities to gauge someone\'s capabilities or knowledge. Testing can also be used to determine the speed and quality of an internet connection, such as measuring upload speed, connection latency (ping), and bufferbloat. Additionally, testing can involve running speed tests on different devices connected to Wi-Fi networks to assess internet speed and connectivity.',
        relatedQuestions: [
          'What are the different types of tests used for assessing knowledge and skills?',
          'How can testing be used to measure the quality of an internet connection?',
          'Can you explain more about running speed tests on devices connected to Wi-Fi networks?',
          'What are some common methods used for testing internet speed and connectivity?',
        ],
      ),
    );
  }
}
