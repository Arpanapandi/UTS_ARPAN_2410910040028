import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Page1()));
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool _keepLoggedIn = false;
  bool _obscurePassword = true;
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('gambar/logo.png', width: 150, height: 100),
                const SizedBox(width: 10),
                const Text(
                  "LKS\nMART",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 70, 93),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text(
                    "Sign in ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Enter your ID and password to sign in!",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            const Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                hintText: "Masukkan Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              onChanged: (value) {
                print("Password: $value");
              },
              decoration: InputDecoration(
                hintText: "Min. 8 characters",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Checkbox(
                  value: _keepLoggedIn,
                  onChanged: (value) {
                    setState(() {
                      _keepLoggedIn = value!;
                    });
                  },
                  activeColor: const Color.fromARGB(255, 2, 70, 93),
                ),
                const Text("Keep me logged in", style: TextStyle(fontSize: 15)),
              ],
            ),

            const SizedBox(height: 20),

           
      ),
    );
  }
}
