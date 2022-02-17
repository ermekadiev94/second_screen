import 'package:flutter/material.dart';
import 'methods.dart';

class CustomForm extends StatefulWidget {
  CustomForm({Key? key}) : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

bool isObscure = true;

class _CustomFormState extends State<CustomForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 2, left: 18),
            alignment: Alignment.topLeft,
            child: const Text(
              'Email',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              validator: (value) {
                return emailValidation(value);
              },
              autocorrect: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                labelText: '',
                hintText: 'Enter your email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 2, left: 18),
            alignment: Alignment.topLeft,
            child: RichText(
              text: const TextSpan(
                text: 'Password                  ',
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
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              obscureText: isObscure,
              validator: (value) {
                return passwordValidation(value);
              },
              decoration: InputDecoration(
                  suffixIcon: obscureCheck(),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  labelText: '',
                  hintText: 'Enter your password'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: LoginButton(),
            ),
          ),
        ],
      ),
    );
  }
}
