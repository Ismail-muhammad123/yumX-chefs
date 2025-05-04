import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Notifications"),
      ),
      body: ListView.builder(
        itemBuilder:
            (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(radius: 20, child: Placeholder()),
                title: Text("Tahir Ibrahim"),
                subtitle: Text("Agreed to cancel"),
                trailing: Text("20 mins ago"),
              ),
            ),
      ),
    );
  }
}
