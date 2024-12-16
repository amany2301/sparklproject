import 'package:flutter/material.dart';
import 'package:sparklproject/onboarding_second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LearningMadePersonalScreen(),
    );
  }
}

class LearningMadePersonalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50], // Light yellow background
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Image.asset(
                    'assets/images/sparkl_logo.png', // Replace with your logo asset
                    height: 80,
                    // width: 50,
                    scale: 1,
                  ),
                ),
                SizedBox(height: 50),

                // Title
                Text(
                  'Learning Made\nPersonal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'A Program designed just for YOU!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 75),

                // Image with tags
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Background Circle
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        shape: BoxShape.circle,
                      ),
                    ),

                    // Circular Image
                    ClipOval(
                      child: Image.asset(
                        'assets/student.jpg', // Replace with your image asset
                        width: 140,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ),

                    // Tags
                    Positioned(
                      top: 10,
                      left: 30,
                      child: TagWidget(label: 'Holistic Well-Being'),
                    ),
                    Positioned(
                      top: 60,
                      right: 10,
                      child: TagWidget(label: 'Personalised'),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 30,
                      child: TagWidget(label: 'Doubt Clarification'),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 50,
                      child: TagWidget(label: '📘'),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Emoji Icon
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/emoji.png'),
                ),
                SizedBox(height: 75),

                // Next Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LiveClassesScreen(),
                        ),
                      );
                      // Handle navigation
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TagWidget extends StatelessWidget {
  final String label;

  const TagWidget({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}

// Asset configuration in pubspec.yaml
// assets:
//   - assets/images/spark_logo.png
//   - assets/images/learning.png
//   - assets/images/engaging.png
//   - assets/images/success.png
//
// Ensure assets are properly placed in the assets/images folder
