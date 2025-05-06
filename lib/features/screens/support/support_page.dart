import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/features/screens/support/help/help_topics.dart';
import 'package:foodi_chefs/features/screens/support/message/support_message_page.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Support",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Color(secondaryColor),
                  fontFamily: "Poppins",
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                onTap:
                    () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SupportMessagePage(),
                      ),
                    ),
                leading: CircleAvatar(
                  backgroundColor: Color(secondaryColor).withOpacity(0.3),
                  child: Icon(Icons.send_rounded, color: Color(secondaryColor)),
                ),
                title: Text("Message Us"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.grey.withOpacity(0.3), thickness: 0.5),
              ListTile(
                onTap:
                    () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SupportFaqPage()),
                    ),
                leading: CircleAvatar(
                  backgroundColor: Color(secondaryColor).withOpacity(0.3),
                  child: Icon(
                    Icons.live_help_outlined,
                    color: Color(secondaryColor),
                  ),
                ),
                title: Text("Help"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.grey.withOpacity(0.3), thickness: 0.5),
            ],
          ),
        ),
      ),
    );
  }
}
