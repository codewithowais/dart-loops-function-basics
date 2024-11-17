import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  TextEditingController emailController =
      TextEditingController(text: "abc@gmail.com");
  TextEditingController passController = TextEditingController();

  login(BuildContext context) {
    print(emailController.text);
    print(passController.text);
    if (emailController.text == 'admin@gmail.com' &&
        passController.text == '123456') {
      final snackBar = SnackBar(
        content: const Text('Yay! A SnackBar!'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      print("Login Successful........");
      emailController.clear();
      passController.clear();
    } else {
      print("Login failed........");
      emailController.text = 'admin@gmail.com';
      passController.text = '123456';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: passController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                login(context);
              },
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
