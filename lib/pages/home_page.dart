import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    bool male = true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog APP"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello world! day $days"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
