import 'package:flutter/material.dart';

class hello_world extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Flutter'),
        backgroundColor: Color.fromARGB(255, 90, 130, 194),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}