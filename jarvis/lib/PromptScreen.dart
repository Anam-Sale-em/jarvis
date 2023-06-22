import 'package:flutter/material.dart';

import 'HomePageDrawer.dart';

class PromptScreen extends StatelessWidget {
  const PromptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            'Jarvis',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 28),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 28, top: 10),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'Prompts \n',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  TextSpan(
                      text: 'All Categories',
                      style: TextStyle(
                          color: Color.fromARGB(255, 112, 111, 111),
                          fontWeight: FontWeight.w500)),
                ])),
              ),
              Container(
                height: 60,
                width: 240,
                padding: const EdgeInsets.only(top: 16, left: 80),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  autocorrect: true,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 220, 220, 232),
                    contentPadding: const EdgeInsets.only(left: 20),
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 220, 220, 232))),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Theme.of(context).primaryColor,
                    ),
                    labelText: 'Search..',
                    labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 8,
          color: Color.fromARGB(255, 115, 115, 115),
        ),
      ]),
      drawer: const Drawer(
        child: HomePageDrawer(),
      ),
    );
  }
}
