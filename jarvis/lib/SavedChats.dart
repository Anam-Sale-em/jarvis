import 'package:flutter/material.dart';

import 'HomePageDrawer.dart';

class SavedChats extends StatelessWidget {
  const SavedChats({super.key});

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
        SizedBox(
            height: 160,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 180,
                  child: Column(
                    children: [
                      const Text(
                        'Saved Chats',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          left: 20,
                        ),
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
                Container(
                  padding: const EdgeInsets.only(left: 40),
                  height: 140,
                  width: 180,
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.only(
                                left: 14, top: 16, right: 14, bottom: 16),
                            child: InkWell(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    'Edit',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Icon(
                                        Icons.edit,
                                        color: Theme.of(context).primaryColor,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.only(
                                left: 6, top: 16, right: 6, bottom: 16),
                            child: InkWell(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text(
                                    'Delete',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
        const Divider(
          height: 8,
          color: Color.fromARGB(255, 115, 115, 115),
        ),
        ListTile(
          leading: Icon(
            Icons.library_books_outlined,
            color: Theme.of(context).primaryColor,
          ),
          title: const Text('Email Template'),
        ),
        const Divider(
          height: 8,
          color: Color.fromARGB(255, 115, 115, 115),
        ),
        ListTile(
          leading: Icon(
            Icons.library_books_outlined,
            color: Theme.of(context).primaryColor,
          ),
          title: const Text('Recipe for Shrimp Scampi'),
        ),
        const Divider(
          height: 8,
          color: Color.fromARGB(255, 115, 115, 115),
        ),
        ListTile(
          leading: Icon(
            Icons.library_books_outlined,
            color: Theme.of(context).primaryColor,
          ),
          title: const Text('Scheduled tweet'),
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
