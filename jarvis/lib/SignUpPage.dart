import 'package:flutter/material.dart';
import 'package:jarvis/HomePage.dart';
import 'package:jarvis/LogInPage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _email = TextEditingController();
    final TextEditingController _password = TextEditingController();
    final TextEditingController _confirmPass = TextEditingController();
    GlobalKey<FormState> form = GlobalKey();
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.grey, width: 1)),
          elevation: 10,
          child: Form(
            key: form,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome to Jarvis GPT-3!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Theme.of(context).primaryColor),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 10, right: 10),
                    child: TextFormField(
                      validator: (value) {
                        return value!.isEmpty
                            ? "*Required Field"
                            : !value.contains('@')
                                ? "Enter Valid Email"
                                : !value.contains('.')
                                    ? "Enter Valid Email"
                                    : value.contains(" ")
                                        ? "Enter Valid Email"
                                        : null;
                      },
                      controller: _email,
                      autocorrect: true,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 220, 220, 232),
                        contentPadding: const EdgeInsets.only(left: 10),
                        enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 220, 220, 232))),
                        labelText: 'Email',
                        suffixIcon: Icon(
                          Icons.email,
                          color: Theme.of(context).primaryColor,
                        ),
                        labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: TextFormField(
                      obscureText: true,
                      validator: (value) {
                        return value!.isEmpty ? "*Required Field" : null;
                      },
                      controller: _password,
                      autocorrect: true,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 220, 220, 232),
                        contentPadding: const EdgeInsets.only(left: 10),
                        enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 220, 220, 232))),
                        suffixIcon: Icon(
                          Icons.key_rounded,
                          color: Theme.of(context).primaryColor,
                        ),
                        labelText: 'password',
                        labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: Theme.of(context).primaryColor,
                      validator: (value) {
                        return value!.isEmpty
                            ? "*Required Field"
                            : _password.text != _confirmPass.text
                                ? "Password doesnt match"
                                : null;
                      },
                      controller: _confirmPass,
                      autocorrect: true,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 220, 220, 232),
                        contentPadding: const EdgeInsets.only(left: 10),
                        enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 220, 220, 232))),
                        suffixIcon: Icon(
                          Icons.key_rounded,
                          color: Theme.of(context).primaryColor,
                        ),
                        labelText: 'Confirm password',
                        labelStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        form.currentState!.validate()
                            ? Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomePage()))
                            : null;
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          fixedSize: const Size(260, 40),
                          shape: const StadiumBorder()),
                      child: const Text('SIGN UP'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                          },
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 37, 148, 106)),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
