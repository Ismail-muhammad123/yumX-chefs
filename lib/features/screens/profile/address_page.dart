import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/features/screens/profile/edit_address_page.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
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
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Address"),
      ),
      body: Column(
        children: [
          Card(
            color: Color(lightSecondaryColor),
            elevation: 0,
            child: ListTile(
              // isThreeLine: true,
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 35,
                    color: Color(secondaryColor),
                  ),
                ],
              ),
              title: Row(
                children: [
                  Text(
                    "HOME",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),

                  GestureDetector(
                    onTap:
                        () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => EditAddressPage(),
                          ),
                        ),
                    child: Icon(
                      Icons.edit_document,
                      color: Color(secondaryColor),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.delete_outline, color: Color(secondaryColor)),
                ],
              ),
              subtitle: Text(
                "Non hytgfhbdnscj,gbdschsdgbc ",

                style: TextStyle(color: Colors.grey, letterSpacing: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
