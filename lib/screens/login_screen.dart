import 'package:flutter/material.dart';
import 'signup_screen.dart'; // Correct path to your SignupScreen
import 'home_screen.dart'; // Correct path to your HomeScreen

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Logo at the top
                Center(
                  child: Image.asset(
                    'assets/images/text-logo.png', // Replace with your logo path
                    height: 100,
                  ),
                ),
                const SizedBox(height: 20),

                // Email TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.green[800]),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green[800]!),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Password TextField
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.green[800]),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green[800]!),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Login Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[700], // Background color
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors
                          .white, // Text color set to white for visibility
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Login with Google Button
                ElevatedButton(
                  onPressed: () {
                    // Implement Google login functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.green[700], // Same green color as Login button
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text(
                    'Login with Google',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors
                          .white, // Text color set to white for visibility
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Create Account Button
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.green[700],
                      fontSize: 16,
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
