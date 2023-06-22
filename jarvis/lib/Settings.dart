import 'package:flutter/material.dart';
import 'package:jarvis/Display.dart';
import 'package:jarvis/Languagechange.dart';
import 'package:jarvis/Notification.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40, bottom: 20),
            child: Text(
              'Settings',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: ListTile(
              tileColor: const Color.fromARGB(255, 220, 220, 232),
              onTap: () {},
              title: const Text('Upgrade'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: Icon(
                Icons.arrow_circle_up_rounded,
                size: 34,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 12),
            child: ListTile(
              tileColor: const Color.fromARGB(255, 220, 220, 232),
              onTap: () {},
              title: const Text('Rate Us'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: Icon(
                Icons.star_border_rounded,
                size: 34,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 12),
            child: ListTile(
              tileColor: const Color.fromARGB(255, 220, 220, 232),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Display()));
              },
              title: const Text('Display'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: Icon(
                Icons.add_alert_rounded,
                size: 34,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 12),
            child: ListTile(
              tileColor: const Color.fromARGB(255, 220, 220, 232),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const NotificationChange()));
              },
              title: const Text('Notifications'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: Icon(
                Icons.add_alert_rounded,
                size: 34,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 12),
            child: ListTile(
              tileColor: const Color.fromARGB(255, 220, 220, 232),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Languagechange()));
              },
              title: const Text('Language'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: Icon(
                Icons.menu_book_rounded,
                size: 34,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 12),
            child: ListTile(
              tileColor: const Color.fromARGB(255, 220, 220, 232),
              onTap: () {},
              title: const Text('Privacy Policy'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: Icon(
                Icons.library_books_outlined,
                size: 34,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 12),
            child: ListTile(
              tileColor: const Color.fromARGB(255, 220, 220, 232),
              onTap: () {},
              title: const Text('Terms of Service'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: Icon(
                Icons.my_library_books_sharp,
                size: 34,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 12),
            child: ListTile(
              tileColor: const Color.fromARGB(255, 220, 220, 232),
              onTap: () {},
              title: const Text('Share App'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: Icon(
                Icons.share_outlined,
                size: 34,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
