import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/core/widgets/form_field.dart';
import 'package:foodi_chefs/core/widgets/primary_button.dart';

class EditAddressPage extends StatefulWidget {
  const EditAddressPage({super.key});

  @override
  State<EditAddressPage> createState() => _EditAddressPageState();
}

class _EditAddressPageState extends State<EditAddressPage> {
  int selectedAddressType = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(primaryColor),
      floatingActionButton: PrimaryButton(
        borderRadius: 30,
        label: "Confirm Address",
        onPressed: () {
          // TODO: implement confirm address function
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            width: double.maxFinite,
            child: Stack(
              children: [
                Container(
                  height: 300,
                  width: double.maxFinite,
                  color: Colors.grey,
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    color: const Color.fromARGB(137, 17, 17, 17),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Address"),
                  SizedBox(height: 5),
                  CustomFormField(fillColor: Color(lightSecondaryColor)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Street"),
                            SizedBox(height: 5),
                            CustomFormField(
                              fillColor: Color(lightSecondaryColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Post code"),
                            SizedBox(height: 5),
                            CustomFormField(
                              fillColor: Color(lightSecondaryColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("Apartment"),
                  SizedBox(height: 5),
                  CustomFormField(fillColor: Color(lightSecondaryColor)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap:
                            () => setState(() {
                              selectedAddressType = 0;
                            }),
                        child: Container(
                          height: 50,
                          width: 100,
                          padding: EdgeInsets.all(12),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(
                              selectedAddressType == 0
                                  ? secondaryColor
                                  : primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            "Home",
                            style: TextStyle(
                              color:
                                  selectedAddressType == 0
                                      ? Color(primaryColor)
                                      : null,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap:
                            () => setState(() {
                              selectedAddressType = 1;
                            }),
                        child: Container(
                          height: 50,
                          width: 100,
                          padding: EdgeInsets.all(12),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(
                              selectedAddressType == 1
                                  ? secondaryColor
                                  : primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            "Work",
                            style: TextStyle(
                              color:
                                  selectedAddressType == 1
                                      ? Color(primaryColor)
                                      : null,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap:
                            () => setState(() {
                              selectedAddressType = 2;
                            }),
                        child: Container(
                          height: 50,
                          width: 100,
                          padding: EdgeInsets.all(12),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(
                              selectedAddressType == 2
                                  ? secondaryColor
                                  : primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            "Other",
                            style: TextStyle(
                              color:
                                  selectedAddressType == 2
                                      ? Color(primaryColor)
                                      : null,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     Container(
                  //       height: 50,
                  //       width: 100,
                  //       padding: EdgeInsets.all(12),
                  //       alignment: Alignment.center,
                  //       decoration: BoxDecoration(
                  //         color: Color(secondaryColor),
                  //         borderRadius: BorderRadius.circular(25),
                  //       ),
                  //       child: Text(
                  //         "Home",
                  //         style: TextStyle(color: Color(primaryColor)),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
