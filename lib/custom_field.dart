import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class CustomForm extends StatefulWidget {
  CustomForm({Key? key}) : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

bool _isObscure = true;

class _CustomFormState extends State<CustomForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 2, left: 18),
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
                if (!value!.contains('@') || value.length < 6) {
                  return 'Please enter a valid email';
                }
                return null;
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
              obscureText: _isObscure,
              validator: (value) =>
                  value!.length < 6 || value.contains(r'*@^|\/}{();')
                      ? 'Password is not valid'
                      : null,
              decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    child: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: _isObscure ? Colors.blue : Colors.orange,
                    ),
                  ),
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
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
