import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/core/widgets/form_field.dart';
import 'package:foodi_chefs/core/widgets/primary_button.dart';

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
        backgroundColor: Color(primaryColor),
        surfaceTintColor: Color(primaryColor),
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Edit Profile"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PrimaryButton(
        label: "Save",
        onPressed: () {
          // TODO implement profile update func
        },
      ),
      backgroundColor: Color(primaryColor),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/banner.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(secondaryColor),
                          shape: BoxShape.circle,
                          // image: DecorationImage(
                          //   fit: BoxFit.cover,
                          //   image: AssetImage("assets/images/banner.png"),
                          // ),
                        ),
                        child: Icon(
                          Icons.edit_outlined,
                          color: Color(primaryColor),
                        ),
                      ),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(
                      //     Icons.edit_outlined,
                      //     color: Color(primaryColor),
                      //   ),
                      //   color: Color(secondaryColor),
                      //   iconSize: 15,
                      // ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("FULL NAME"),
            SizedBox(height: 5),
            CustomFormField(fillColor: Color(lightSecondaryColor)),
            SizedBox(height: 10),
            Text("Email"),
            SizedBox(height: 5),
            CustomFormField(fillColor: Color(lightSecondaryColor)),
            SizedBox(height: 10),
            Text("Phone Number"),
            SizedBox(height: 5),
            CustomFormField(fillColor: Color(lightSecondaryColor)),
            SizedBox(height: 10),
            Text("BIO"),
            SizedBox(height: 5),
            CustomFormField(fillColor: Color(lightSecondaryColor)),
          ],
        ),
      ),
    );
  }
}
