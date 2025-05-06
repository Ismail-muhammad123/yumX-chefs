import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(primaryColor),
      appBar: AppBar(
        backgroundColor: Color(primaryColor),
        surfaceTintColor: Color(primaryColor),
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios, color: Color(secondaryColor)),
        ),
        title: Text("Notifications"),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder:
            (context, index) => Card(
              elevation: 0,
              color: Color(lightSecondaryColor),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                title: Text("Tahir Ibrahim"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Agreed to cancel",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "20 mins ago",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                isThreeLine: true,
              ),
            ),
      ),
    );
  }
}
