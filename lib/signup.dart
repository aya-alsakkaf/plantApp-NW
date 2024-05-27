import 'package:flutter/material.dart';
import 'package:loginplant/Homepage.dart';
import 'package:loginplant/Login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color sageGreen = Color(0xFF9DBA9D);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Sign Up',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: sageGreen,
      ),
      backgroundColor: Color.fromARGB(255, 229, 228, 228),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/007/957/923/original/tropical-plant-logo-set-minimalist-style-free-vector.jpg',
              height: 150,
              width: 230,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: sageGreen),
                ),
                labelStyle: TextStyle(color: sageGreen, fontSize: 14),
              ),
              cursorColor: sageGreen,
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: sageGreen),
                ),
                labelStyle: TextStyle(color: sageGreen, fontSize: 14),
              ),
              cursorColor: sageGreen,
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Email Address',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: sageGreen),
                  ),
                  labelStyle: TextStyle(color: sageGreen, fontSize: 14)),
              cursorColor: sageGreen,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(sageGreen),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: const Text(
                'SIGN UP',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text("LOG IN",
                      style: TextStyle(
                          color: sageGreen,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
