import 'package:flutter/material.dart';

void main() {
  runApp(const BrixoMartApp());
}

class BrixoMartApp extends StatelessWidget {
  const BrixoMartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brixo Mart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _showSecondText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brixo Mart'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Main text that changes
              Text(
                _showSecondText 
                    ? 'Thanks for visiting Brixo Mart! 🛒\nEnjoy your shopping experience!' 
                    : 'Welcome to the Brixo Mart\nCreated by Trishant Sharma',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: _showSecondText ? 22 : 24,
                  fontWeight: FontWeight.bold,
                  color: _showSecondText ? Colors.green : Colors.blue,
                ),
              ),
              const SizedBox(height: 50),
              
              // Button
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showSecondText = !_showSecondText;
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: Text(_showSecondText ? 'Back' : 'Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}