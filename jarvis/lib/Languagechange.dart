import 'package:flutter/material.dart';

class Languagechange extends StatelessWidget {
  const Languagechange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Card(
          margin: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
          shape: const StadiumBorder(),
          elevation: 2,
          child: IconButton(
            iconSize: 18,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Language',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const Text(
                'Jarvis defaults to the language of your device,but you can set it to any of the languages listed above.'),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
                onPressed: () {},
                child: const Text('SAVE'))
          ],
        ),
      ),
    );
  }
}
