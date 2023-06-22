import 'package:flutter/material.dart';
import 'package:jarvis/HomePage.dart';
import 'package:jarvis/PromptScreen.dart';
import 'package:jarvis/SavedChats.dart';
import 'package:jarvis/Settings.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 30.0, top: 60, left: 20, right: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Menu',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            title: const Text('New Chat'),
            leading: Icon(
              Icons.add,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PromptScreen()));
            },
            title: const Text('Prompts'),
            leading: Icon(
              Icons.message_rounded,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SavedChats()));
            },
            title: const Text('Saved Chat'),
            leading: Icon(
              Icons.save_sharp,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Settings()));
            },
            title: const Text('Settings'),
            leading: Icon(
              Icons.settings_outlined,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24, top: 20),
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Theme.of(context).primaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 16.0, left: 20, bottom: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.auto_awesome,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'FULL VERSION: OFFERS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
