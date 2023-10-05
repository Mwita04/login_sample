// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginScreen());
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Boda Boda",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Login To Your App",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 44.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 44.0, // spacing
          ),

          // Email TextField
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "User Email",
              prefixIcon: Icon(Icons.mail, color: Colors.black87),
            ),
          ),

          const SizedBox(
            height: 44.0, // spacing
          ),

          // Password TextField.
          const TextField(
            obscureText: false,
            decoration: InputDecoration(
              hintText: "User Password",
              prefixIcon: Icon(
                Icons.password_outlined,
                color: Colors.black87,
              ),
            ),
          ),

          const SizedBox(
            height: 12.0, // spacing
          ),

          const Text(
            "Forgot Your Password",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),

          const SizedBox(
            height: 88.0, // spacing
          ),

          //Container
          SizedBox(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Color(0xff0069fe),
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
