import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/screens/category_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(color: const Color.fromARGB(255, 83, 142, 193)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                  Icon(
                    Icons.access_alarm_outlined,
                    size: 150,
                    color: Colors.white,
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 232, 232),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: const Color.fromARGB(255, 144, 122, 193),
                              size: 30,
                            ),
                            hintText: "User name",
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          obscureText: true,
                          obscuringCharacter: '+',
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: const Color.fromARGB(255, 144, 122, 193),
                              size: 30,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: const Color.fromARGB(255, 144, 122, 193),
                              size: 30,
                            ),
                            hintText: "Password",
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("New to quiz app?"),
                            TextButton(
                              onPressed: () {},
                              child: Text("Register."),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil<void>(
                              context,
                              MaterialPageRoute<void>(
                                builder:
                                    (BuildContext context) =>
                                        const CategoryScreen(),
                              ),
                              ModalRoute.withName('//'),
                            );
                          },
                          child: Text("Login"),
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.fingerprint,
                          size: 50,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Use touch ID',
                          style: TextStyle(color: Colors.grey),
                        ),

                        SizedBox(
                          height: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment(0.7, -0.13),
                                child: Checkbox(
                                  value: rememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      rememberMe = value!;
                                    });

                                    log(rememberMe.toString());
                                  },
                                ),
                              ),
                              Text(
                                "Remember me",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(),
                              TextButton(
                                onPressed: () {},
                                child: Text('Forget Password?'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
