import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // The app starts here
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teamnology',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(), // The first screen of the app
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF631E42), // Background color
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo and Button Row
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.translate(
                    offset: const Offset(-33, -48),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 200,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-30, -30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD8CAD2),
                        foregroundColor: const Color(0xFF631E42),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 20),
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // curve on edges
                        ),
                      ),
                      onPressed: () {
                        _showLoginDialog(context);
                      },
                      child: const Text('Get started now!'),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Transform.translate(
              offset: const Offset(10, -150),
              child: Column(
                children: [
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'How do you get ',
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFDEB),
                        ),
                        children: [
                          TextSpan(
                            text: 'teamnoleged', // Special word
                            style: TextStyle(
                              color:
                                  Color(0xFFEF91AD), // Color for "teamnoleged"
                            ),
                          ),
                          TextSpan(
                            text: ' in just easy 3 steps:', // Regular text
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 5.0), // spacing between the texts
                  Transform.translate(
                    offset: Offset(-30, 0),
                    child: Center(
                      child: Text(
                        '(part of Simac)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFEF91AD),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(-10, -130),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/one.png',
                      height: 225,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 40),
                    Image.asset(
                      'assets/images/two.png',
                      height: 225,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 40),
                    Image.asset(
                      'assets/images/three.png',
                      height: 225,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            // Text Above Big Button
            // Small Text
            Transform.translate(
              offset: const Offset(0, -100),
              child: const Padding(
                padding: EdgeInsets.only(bottom: 1.0),
                child: Center(
                  child: Text(
                    'Are you ready for your onboarding?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFFFDEB),
                    ),
                  ),
                ),
              ),
            ),
            // Big Button
            Transform.translate(
              offset: const Offset(0, -110),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 26.0),
                child: MouseRegion(
                  onEnter: (_) {},
                  onExit: (_) {},
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD8CAD2),
                        foregroundColor: const Color(0xFF631E42),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 25),
                        textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        _showLoginDialog(context);
                      },
                      child: const Text('GET STARTED'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showLoginDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // Rounded corners
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Use your Simac email to log in',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '....@simac.com',
                  ),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
