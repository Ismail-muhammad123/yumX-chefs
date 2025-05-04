import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Address"),
      ),
      body: Column(
        children: [
          ListTile(
            isThreeLine: true,
            leading: Icon(Icons.home_outlined),
            title: Row(
              children: [
                Text("HOME"),
                Spacer(),
                Icon(Icons.edit_document, color: Color(secondaryColor)),
                SizedBox(width: 10),
                Icon(Icons.delete, color: Color(secondaryColor)),
              ],
            ),
            subtitle: Text("Non hytgfhbdnscj,gbdschsdgbc "),
          ),
        ],
      ),
    );
  }
}
