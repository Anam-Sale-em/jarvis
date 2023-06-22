import 'package:flutter/material.dart';
import 'package:jarvis/HomePageDrawer.dart';

import 'PromptScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Jarvis',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_up_rounded,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_scanner_outlined,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.replay_outlined,
                color: Colors.grey,
              ))
        ],
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.grey,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(Icons.question_mark),
          const Text('Not sure what to do'),
          Padding(
            padding:
                const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 60),
            child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PromptScreen()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: const Color.fromARGB(255, 220, 220, 232),
                title: const Text(
                    'Check out our present prompts for inspiration ! Lets go ->'),
                trailing: Icon(
                  Icons.chat_bubble_outline,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          const Icon(Icons.wb_sunny_outlined),
          const Text('Examples'),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
            child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: const Color.fromARGB(255, 220, 220, 232),
                title: const Text('Explain quantum computing in simple terms'),
                trailing: Icon(
                  Icons.send,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
            child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: const Color.fromARGB(255, 220, 220, 232),
                title:
                    const Text('Write a letter to my boss asking for a raise'),
                trailing: Icon(
                  Icons.send,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 60),
            child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: const Color.fromARGB(255, 220, 220, 232),
                title: const Text('Write me a shoping list for eting healthy'),
                trailing: Icon(
                  Icons.send,
                  color: Theme.of(context).primaryColor,
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 30, right: 30, bottom: 10),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
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
                      Icons.send,
                      color: Theme.of(context).primaryColor,
                    ),
                    labelText: 'Type here...',
                    labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      drawer: const Drawer(
        child: HomePageDrawer(),
      ),
    );
  }
}
