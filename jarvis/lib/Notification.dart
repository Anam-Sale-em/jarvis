import 'package:flutter/material.dart';

class NotificationChange extends StatefulWidget {
  const NotificationChange({super.key});

  @override
  State<NotificationChange> createState() => _NotificationChangeState();
}

class _NotificationChangeState extends State<NotificationChange> {
  bool value = false;
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
              'Notification',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Push Notification'),
            ),
            Switch(
                value: value,
                onChanged: (val) {
                  setState(() {
                    value = val;
                  });
                }),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Email Notification'),
            ),
            Switch(
                value: value,
                onChanged: (val) {
                  setState(() {
                    value = val;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
