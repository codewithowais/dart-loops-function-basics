import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool showPass = false;

  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  login(context) {
    if (emailController.text == 'admin@gmail.com' &&
        passController.text == '123456') {
      final snackBar = SnackBar(
        content: const Text('Login successful........'),
        action: SnackBarAction(
          label: 'cancel',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      print("Login successful......");
      emailController.clear();
      passController.clear();
    } else {
      emailController.text = 'admin@gmail.com';
      passController.text = '123456';
      print("Login failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              obscureText: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: passController,
              obscureText: !showPass,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.visibility),
                  onPressed: () {},
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                login(context);
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showPass = true;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
