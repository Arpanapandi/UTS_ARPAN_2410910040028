import 'package:flutter/material.dart';

void main(List<String> args) {
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset('gambar/logo.png',
              width: 60,
              height: 60
              ),
              Text("LKS\nMART"),
            ],
            
          ),
          

        ),
    );
  }
}