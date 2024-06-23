import 'package:chat_app/login&signup/screens/login_screen.dart';
import 'package:chat_app/login&signup/services/authentication.dart';
import 'package:chat_app/login&signup/widgets/button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Congratulation \n You have Successfully Login',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Text("Yeng chat app home Screen"),
          MyButton(
              onTab: () async {
                await AuthServices().signOut();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              text: "Log Out"),
          MyButton(
              onTab: () async {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              text: "Text button")
        ],
      ),
    );
  }
}
