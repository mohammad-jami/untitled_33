import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Greeting App'),
        ),
        body: const GreetingPage(),
      ),
    );
  }
}

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello, World!',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Welcome to Flutter!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 16),
            Image.network(
              'https://images.freeimages.com/images/large-previews/f99/red-photos-1198380.jpg',
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Button Pressed!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
