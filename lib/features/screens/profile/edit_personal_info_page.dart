import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class PersonalInfoEditPage extends StatefulWidget {
  const PersonalInfoEditPage({super.key});

  @override
  State<PersonalInfoEditPage> createState() => _PersonalInfoEditPageState();
}

class _PersonalInfoEditPageState extends State<PersonalInfoEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Edit Profile"),
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 35,
              width: 35,
              child: Stack(
                children: [
                  CircleAvatar(radius: 35, child: Placeholder()),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit_outlined,
                        color: Color(primaryColor),
                      ),
                      color: Color(secondaryColor),
                      iconSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("FULL NAME"),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Color(lightSecondaryColor),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          SizedBox(height: 10),
          Text("Email"),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Color(lightSecondaryColor),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          SizedBox(height: 10),
          Text("Phone Number"),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Color(lightSecondaryColor),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          SizedBox(height: 10),
          Text("BIO"),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Color(lightSecondaryColor),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(8),
            ),
          ),
        ],
      ),
    );
  }
}
