import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const SecondScreen());
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter textfield'),
          ),
          body: Center(
              child: Container(
            height: 450,
            color: Colors.grey[350],
            child: Column(
              children: [
                Container(
                  height: 350,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(2.0, 2.0), // shadow direction: bottom right
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(25, 30, 25, 30),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          alignment: const Alignment(-0.96, -1.0),
                          child: const Text(
                            'Email',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              labelText: '',
                              hintText: ' '),
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                            alignment: const Alignment(-0.30, -1.0),
                            child: RichText(
                              text: const TextSpan(
                                  text: 'Password                ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Forgot password?',
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 18,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: -0.2,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ]),
                            )),
                        const TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              labelText: '',
                              hintText: ' '),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 25),
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                          child: const Center(
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 57,
                ),
                RichText(
                    textAlign: TextAlign.justify,
                    text: const TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sign up',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 20))
                        ]))
              ],
            ),
          )),
        ));
  }
}
