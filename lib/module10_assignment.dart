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
                color: Colors.red, // Change text color to red
                fontWeight: FontWeight.bold, // Make text bold
                fontSize: 24, // Optionally set a font size
              ),
            ),
            const SizedBox(height: 16), // Add spacing between texts
            const Text(
              'Welcome to Flutter!',
              style: TextStyle(
                fontSize: 20, // Optionally set a font size
              ),
            ),
            const SizedBox(height: 16), // Add spacing between text and image
            // const Image(
            //   image: AssetImage('assets/images/flutter.jpg'),
            // ),
            Image.network(
              'https://images.freeimages.com/images/large-previews/f99/red-photos-1198380.jpg',
              height: 200,
              width: 200,// Adjust the height as needed
            ),
            //Image.asset('assets/images/flutter.jpg',width: 150,height: 150,),
            // width: 150, // Set width of the image
            // height: 150, // Set height of the image
            const SizedBox(height: 16), // Add spacing before the button
            ElevatedButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Button Pressed!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Change button color to green
              ),
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
