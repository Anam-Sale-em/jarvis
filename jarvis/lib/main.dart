import 'package:flutter/material.dart';
import 'package:jarvis/HomePage.dart';
import 'package:jarvis/MeetJarvisPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jarvis',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 37, 148, 106),
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 247, 247),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: const Color.fromRGBO(52, 204, 158, 0.976),
              height: MediaQuery.of(context).size.height * 0.26,
            ),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20, top: 60, bottom: 30),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomePage()));
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const StadiumBorder(),
                        side: const BorderSide(width: 0.8, color: Colors.grey)),
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Color.fromARGB(255, 64, 64, 64)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child:
                    Image.asset('assets/images/jarvisImage.png', height: 280),
              ),
              const MeetJarvis(),
            ],
          ),
        ],
      ),
    );
  }
}
