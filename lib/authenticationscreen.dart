import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Spare Parts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthSelectionScreen(),
    );
  }
} 

class AuthSelectionScreen extends StatelessWidget {
  const AuthSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Spare Parts'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Let\'s help you buy',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const Text(
              'auto spare parts!',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  side: const BorderSide(color: Colors.blue),
                ),
                child: const Text('Register'),
              ),
            ),
            const SizedBox(height: 30),
            const Text('or connect with'),
            const SizedBox(height: 20),
            IconButton(
              icon: const Icon(Icons.fingerprint, size: 40),
              onPressed: () {},
            ),
            const Text('Login with touch ID'),
          ],
        ),
      ),
    );
  }
}
