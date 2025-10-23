import 'package:flutter/material.dart';

void main(List<String> args) {
}

class Page2 extends StatelessWidget {
  const Page2({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Activity"),
        backgroundColor: const Color.fromARGB(255, 2, 70, 93),
      ),
      body: const Center(
        child: Text(
          "Ini halaman Daftar Activity",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}