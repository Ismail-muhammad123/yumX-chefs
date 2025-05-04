import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(secondaryColor),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Available Balance",
                  style: TextStyle(color: Color(primaryColor)),
                ),
                Text(
                  "\$500.00",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color(primaryColor),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(primaryColor)),
                  ),
                  child: Text("Withdraw"),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ProfileListTile(
            icon: Icon(Icons.person_2_outlined),
            title: "Personal Info",
            onTap: () {},
          ),
          SizedBox(height: 12),
          ProfileListTile(
            icon: Icon(Icons.money),
            title: "Withdrawal History",
            onTap: () {},
          ),
          ProfileListTile(
            icon: Icon(Icons.money),
            title: "Orders",
            onTap: () {},
          ),
          SizedBox(height: 12),
          ProfileListTile(
            icon: Icon(Icons.feedback_rounded),
            title: "User reviews",
            onTap: () {},
          ),
          SizedBox(height: 12),
          ProfileListTile(
            icon: Icon(Icons.logout, color: Colors.red),
            title: "Log Out",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class ProfileListTile extends StatelessWidget {
  final Icon icon;
  final String title;
  final Function() onTap;
  const ProfileListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(lightSecondaryColor),
      ),
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(primaryColor),
            radius: 10,
            child: icon,
          ),
          Text(title),
          Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
