import 'package:flutter/material.dart';

void main(List<String> args) {}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('gambar/logo.png', width: 150, height: 100),
                Text(
                  "LKS\nMART",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 2, 70, 93),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  "Sign in",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Enter your ID and password to sign in!"),
              ],
            ),
          ),

          Text("Email"),
          TextField(
            decoration: InputDecoration(
              hintText: "Masukan Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              )
            ),
          ),

          Text("Password"),
          TextField(
            decoration: InputDecoration(
              suffixIcon: IconButton(),
              hintText: "Min. 8 characters",
            )),

        ],
      ),
    );
  }
}
