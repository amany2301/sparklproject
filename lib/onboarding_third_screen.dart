import 'package:flutter/material.dart';

class OnboardingScreenthird extends StatefulWidget {
  const OnboardingScreenthird({Key? key}) : super(key: key);

  @override
  State<OnboardingScreenthird> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreenthird> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = const [
    OnboardingPageWithChat(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow, Colors.orangeAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: OnboardingPageWithChat(),
        // child: Column(
        //   children: [
        //     // Expanded(
        //     //   child: PageView.builder(
        //     //     controller: _pageController,
        //     //     onPageChanged: (index) {
        //     //       setState(() {
        //     //         _currentPage = index;
        //     //       });
        //     //     },
        //     //     itemCount: _pages.length,
        //     //     itemBuilder: (context, index) {
        //     //       return _pages[index];
        //     //     },
        //     //   ),
        //     // ),
        //     // Row(
        //     //   mainAxisAlignment: MainAxisAlignment.center,
        //     //   children: List.generate(
        //     //     _pages.length,
        //     //     (index) => Container(
        //     //       margin: const EdgeInsets.all(4.0),
        //     //       width: _currentPage == index ? 12.0 : 8.0,
        //     //       height: 8.0,
        //     //       decoration: BoxDecoration(
        //     //         shape: BoxShape.circle,
        //     //         color: _currentPage == index ? Colors.orange : Colors.grey,
        //     //       ),
        //     //     ),
        //     //   ),
        //     // ),
        //     // Padding(
        //     //   padding: const EdgeInsets.symmetric(vertical: 20.0),
        //     //   child: ElevatedButton(
        //     //     onPressed: (){},
        //     //     style: ElevatedButton.styleFrom(
        //     //       backgroundColor: Colors.orange.shade600,
        //     //       padding:
        //     //           const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        //     //       shape: RoundedRectangleBorder(
        //     //         borderRadius: BorderRadius.circular(8),
        //     //       ),
        //     //     ),
        //     //     child: Text(
        //     //       _currentPage == _pages.length - 1 ? 'Get Started' : 'Next',
        //     //       style: const TextStyle(fontSize: 18, color: Colors.black),
        //     //     ),
        //     //   ),
        //     // ),
        //   ],
        // ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  const OnboardingPage({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(height: 50),
        const _AppHeader(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Image.asset(imagePath, height: 250),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            description,
            style: const TextStyle(fontSize: 18, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class OnboardingPageWithChat extends StatelessWidget {
  const OnboardingPageWithChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(height: 50),
        const _AppHeader(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Doubt Resolution with Teachers',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              children: [
                _buildChatBubble(
                  text:
                      'Do you want to go over how to apply the quadratic formula?',
                  alignment: Alignment.centerLeft,
                  color: Colors.orange.shade300,
                ),
                const SizedBox(height: 16),
                _buildChatBubble(
                  text: 'Yes, I’m confused about when to use it.',
                  alignment: Alignment.centerRight,
                  color: Colors.white,
                ),
                const SizedBox(height: 16),
                _buildChatBubble(
                  text:
                      'You use it when the equation is in the form ax² + bx + c = 0.',
                  alignment: Alignment.centerLeft,
                  color: Colors.orange.shade300,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildChatBubble(
      {required String text,
      required Alignment alignment,
      required Color color}) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ),
    );
  }
}

class _AppHeader extends StatelessWidget {
  const _AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(width: 20),
        Icon(Icons.star, color: Colors.orange, size: 30),
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
    );
  }
}

class DoubtResolutionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo
                  Image.asset(
                    'assets/logo.png', // Replace with your logo asset
                    height: 40,
                  ),
                  SizedBox(height: 8),
                  // Title
                  Text(
                    'Doubt Resolution with Teachers',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            // Chat Section
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: [
                  // Teacher's Chat Bubble
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/teacher.jpg'), // Replace with your asset
                        radius: 20,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(12.0),
                          margin: EdgeInsets.only(bottom: 16.0),
                          decoration: BoxDecoration(
                            color: Colors.yellow[300],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Do you want to go over how to apply the quadratic formula?',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Student's Chat Bubble
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(12.0),
                          margin: EdgeInsets.only(bottom: 16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                            ),
                            border: Border.all(color: Colors.grey[300]!),
                          ),
                          child: Text(
                            'Yes, I’m confused about when to use it.',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/student.jpg'), // Replace with your asset
                        radius: 20,
                      ),
                    ],
                  ),

                  // Teacher's Chat Bubble
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/teacher.jpg'), // Replace with your asset
                        radius: 20,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(12.0),
                          margin: EdgeInsets.only(bottom: 16.0),
                          decoration: BoxDecoration(
                            color: Colors.yellow[300],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: Text(
                            'You use it when the equation is in the form ax² + bx + c = 0. Let me show you a quick example to clarify.',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Footer Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
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
                  // Get Started Button
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle "Get Started" button click
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow[600],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 14.0),
                        ),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
