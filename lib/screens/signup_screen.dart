import 'package:flutter/material.dart';
import 'home_screen.dart'; // Ensure this path is correct

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
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
                SizedBox(height: 20),

                // Name TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.green[800]),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green![800]!),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Email TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.green[800]),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green![800]!),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Password TextField
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.green[800]),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green![800]!),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Dropdown Menu for Account Type
                DropdownButtonFormField<String>(
                  value: 'Car',
                  items: [
                    DropdownMenuItem(value: 'Car', child: Text('Car')),
                    DropdownMenuItem(
                        value: 'Charging Station',
                        child: Text('Charging Station')),
                  ],
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    labelText: 'Account Type',
                    labelStyle: TextStyle(color: Colors.green[800]),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),

                // Sign Up Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[700], // Background color
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors
                          .white, // Text color set to white for visibility
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Back to Login Button
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Back to Login',
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
