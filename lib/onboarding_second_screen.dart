import 'package:flutter/material.dart';
import 'package:sparklproject/onboarding_third_screen.dart';

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow, Colors.greenAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 50),
            Row(
              children: const [
                SizedBox(width: 20),
                Icon(Icons.star, color: Colors.yellow, size: 30),
                SizedBox(width: 8),
                Text(
                  'Sparkl',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                Text(
                  '1-on-1 Live Classes',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  'Learning customized for every student',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Base cards
                Positioned(
                  bottom: -20,
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/images/stack_card.png',
                      width: 300,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/stack_card.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/emoji.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            // Navigation buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingScreenthird(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow.shade600,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 130, vertical: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class LiveClassesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo and Title
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Image.asset(
                      'assets/images/sparkl_logo.png',
                      // Replace with your logo asset
                      height: 50,
                    ),
                  ),
                  SizedBox(height: 8),

                  // Title
                  Text(
                    '1-on-1 Live Classes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Learning customized for every student',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Teacher Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      'assets/teacher.jpg', // Replace with your image asset
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20),

                  Stack(alignment: Alignment.center, children: [
                    Image.asset(
                      'assets/images/stack_card.png',
                      width: 300,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ]),
                  SizedBox(height: 20),
                  // Circular Avatar
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        'assets/student.jpg'), // Replace with your asset
                  ),
                  SizedBox(height: 150),

                  // Navigation Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Back Button
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.yellow[700],
                          child: Icon(Icons.arrow_back, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DoubtResolutionScreen(),
                                ));
                            // Handle "Next" button click
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
