import 'package:flutter/material.dart';
import 'main.dart';
import 'custom_form.dart';

final formKey = GlobalKey<FormState>();
String pattern = r"[!-/:-@[-`{-~]";
RegExp regex = RegExp(pattern);
final validCharacters = RegExp(r'[а-я]');

//Password
String? passwordValidation(String? value) {
  if (value!.length < 6 ||
      regex.hasMatch(value) ||
      validCharacters.hasMatch(value)) {
    return 'Password is not valid';
  }
  return null;
}

//Obscure
InkWell obscureCheck() {
  return InkWell(
    onTap: () {
      isObscure = !isObscure;
    },
    child: Icon(
      isObscure ? Icons.visibility : Icons.visibility_off,
      color: isObscure ? Colors.blue : Colors.orange,
    ),
  );
}

//Email
String? emailValidation(String? value) {
  if (!value!.contains('@') ||
      value.length < 6 ||
      validCharacters.hasMatch(value)) {
    return 'Please enter a valid email';
  }
  return null;
}

//The following is a Login button
class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Processing Data')),
          );
        }
      },
      child: const Text(
        'Log in',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
