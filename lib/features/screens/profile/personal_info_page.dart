import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key});

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Personal Info"),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Edit",
              style: TextStyle(
                color: Color(secondaryColor),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(radius: 25, child: Placeholder()),
              Column(
                children: [
                  Text(
                    "John Doe",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "I love fast food",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 18),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(backgroundColor),
              radius: 20,
              child: Icon(Icons.person_outline, color: Color(secondaryColor)),
            ),
            title: Text("FULL NAME"),
            subtitle: Text("john doe"),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(backgroundColor),
              radius: 20,
              child: Icon(Icons.email_outlined, color: Color(secondaryColor)),
            ),
            title: Text("EMAIL"),
            subtitle: Text("johndoe@yahoo.com"),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(backgroundColor),
              radius: 20,
              child: Icon(Icons.phone_outlined, color: Color(secondaryColor)),
            ),
            title: Text("PHONE NUMBER"),
            subtitle: Text("+234 567897653"),
          ),
        ],
      ),
    );
  }
}
