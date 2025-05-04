import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/core/widgets/primary_button.dart';

class EditAddressPage extends StatefulWidget {
  const EditAddressPage({super.key});

  @override
  State<EditAddressPage> createState() => _EditAddressPageState();
}

class _EditAddressPageState extends State<EditAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: PrimaryButton(
        label: "Confirm Address",
        onPressed: () {
          // TODO: implement confirm address function
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              color: const Color.fromARGB(137, 17, 17, 17),
            ),
          ),
          SizedBox(height: 300, width: double.maxFinite, child: Placeholder()),
          Text("Address"),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Color(lightSecondaryColor),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text("Street"),
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
              ),
              SizedBox(width: 10),
              Flexible(
                child: Column(
                  children: [
                    Text("Post code"),
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
              ),
            ],
          ),
          SizedBox(height: 10),
          Text("Apartment"),
          SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Color(lightSecondaryColor),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(8),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                height: 50,
                width: 100,
                padding: EdgeInsets.all(12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(secondaryColor),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  "Home",
                  style: TextStyle(color: Color(primaryColor)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
