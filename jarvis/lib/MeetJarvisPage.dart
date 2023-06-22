import 'package:flutter/material.dart';
import 'package:jarvis/LogInPage.dart';
import 'package:jarvis/SignUpPage.dart';

class MeetJarvis extends StatefulWidget {
  const MeetJarvis({super.key});

  @override
  State<MeetJarvis> createState() => _MeetJarvisState();
}

class _MeetJarvisState extends State<MeetJarvis> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [Container()],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.36,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.0,
                        offset: Offset(1, -1)),
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        offset: Offset(-1, 1))
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: check ? 'Live' : 'Meet',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: check
                                ? const Color.fromARGB(255, 37, 148, 106)
                                : Colors.black),
                      ),
                      TextSpan(
                        text: check ? ' dialogue' : ' Jarvis.',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: check
                                ? Colors.black
                                : const Color.fromARGB(255, 37, 148, 106)),
                      )
                    ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24, top: 14, bottom: 20),
                    child: check
                        ? const Text(
                            'Get the perfect results every time with jarvis dialogue-based editing and live feedback feature.',
                            style: TextStyle(fontWeight: FontWeight.w500))
                        : const Text.rich(TextSpan(children: [
                            TextSpan(
                                text: 'The AI-powered GPT-3 ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: 'search',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 93, 176, 144))),
                            TextSpan(
                                text: ' and ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: 'content creation',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 93, 176, 144))),
                            TextSpan(
                                text:
                                    ' app that gives you accurate, ad-free result instantly.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ))
                          ])),
                  ),
                  !check
                      ? ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              check = !check;
                            });
                          },
                          label: const Text(
                            'NEXT',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          icon: const Icon(Icons.arrow_forward),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 37, 148, 106),
                              fixedSize: const Size(260, 40),
                              shape: const StadiumBorder()),
                        )
                      : ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                          },
                          label: const Text(
                            'GET STARTED',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          icon: const Icon(Icons.arrow_forward),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 37, 148, 106),
                              fixedSize: const Size(260, 40),
                              shape: const StadiumBorder()),
                        ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                            color: Color.fromARGB(255, 133, 132, 132),
                            fontWeight: FontWeight.bold),
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
        Text(
          '',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
