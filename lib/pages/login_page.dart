import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "images/login.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Username"),
                    hintText: "Enter username",
                  ),
                  onChanged: ((value) {
                    name = value;
                    setState(() {});
                  }),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter password",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRouts.homeRoute);
                  },
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
