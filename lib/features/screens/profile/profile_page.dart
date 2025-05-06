import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/features/screens/authentication/login_screen.dart';
import 'package:foodi_chefs/features/screens/profile/address_page.dart';
import 'package:foodi_chefs/features/screens/profile/notifications.dart';
import 'package:foodi_chefs/features/screens/profile/personal_info_page.dart';
import 'package:foodi_chefs/features/screens/profile/user_review_form_page.dart';
import 'package:foodi_chefs/features/screens/support/help/help_topics.dart';
import 'package:foodi_chefs/features/screens/withdrawals/withdrawal_form.dart';
import 'package:foodi_chefs/features/screens/withdrawals/withdrawals_history.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(primaryColor),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(secondaryColor),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Available Balance",
                  style: TextStyle(color: Color(primaryColor), fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "\$500.00",
                    style: TextStyle(
                      color: Color(primaryColor),
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => WithdrawalForm(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(primaryColor)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Withdraw",
                          style: TextStyle(
                            color: Color(primaryColor),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 20.0,
              ),
              child: ListView(
                children: [
                  ListTile(
                    onTap:
                        () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PersonalInfoPage(),
                          ),
                        ),
                    tileColor: Colors.grey.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.all(16),
                    leading: Icon(
                      Icons.person_outline,
                      color: Color(secondaryColor),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text("Personal Info"),
                  ),
                  SizedBox(height: 5),
                  // ListTile(
                  //   onTap:
                  //       () => Navigator.of(context).push(
                  //         MaterialPageRoute(
                  //           builder: (context) => AddressPage(),
                  //         ),
                  //       ),
                  //   tileColor: Color(lightSecondaryColor),
                  //   leading: Icon(Icons.map, color: Color(secondaryColor)),
                  //   title: Text("Addresses"),
                  // ),
                  SizedBox(height: 30),

                  // ListTile(
                  //   onTap:
                  //       () => Navigator.of(context).push(
                  //         MaterialPageRoute(builder: (context) => CartTab()),
                  //       ),
                  //   tileColor: Color(lightSecondaryColor),
                  //   leading: Icon(
                  //     Icons.shopping_bag_outlined,
                  //     color: Color(secondaryColor),
                  //   ),
                  //   title: Text("Cart"),
                  //   trailing: Icon(
                  //     Icons.keyboard_arrow_right,
                  //     color: Color(secondaryColor),
                  //     size: 20,
                  //   ),
                  // ),
                  // const SizedBox(height: 5),
                  ListTile(
                    onTap:
                        () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => WithdrawalsHistory(),
                          ),
                        ),
                    tileColor: Colors.grey.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.all(16),
                    leading: Icon(Icons.money, color: Color(secondaryColor)),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text("Withdrawal History"),
                  ),
                  ListTile(
                    tileColor: Colors.grey.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.all(16),
                    leading: Icon(
                      Icons.local_grocery_store,
                      color: Color(secondaryColor),
                    ),
                    trailing: Text("29K"),
                    title: Text("Number of orders"),
                  ),
                  SizedBox(height: 30),
                  ListTile(
                    onTap:
                        () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => UserReviewFormPage(),
                          ),
                        ),
                    tileColor: Colors.grey.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.all(16),
                    leading: Icon(
                      Icons.local_grocery_store,
                      color: Color(secondaryColor),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    title: Text("User Reviews"),
                  ),

                  SizedBox(height: 30),
                  ListTile(
                    onTap: () async {
                      bool? res = await showDialog(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              backgroundColor: Color(primaryColor),
                              content: SizedBox(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("Are you sure you want to logout?"),
                                    SizedBox(height: 20),
                                    MaterialButton(
                                      onPressed:
                                          () => Navigator.of(context).pop(true),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      color: Color(secondaryColor),
                                      minWidth: 300,
                                      child: Text(
                                        "Yes",
                                        style: TextStyle(
                                          color: Color(primaryColor),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    MaterialButton(
                                      onPressed:
                                          () =>
                                              Navigator.of(context).pop(false),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: Color(secondaryColor),
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      color: Color(primaryColor),
                                      minWidth: 300,
                                      child: Text(
                                        "No",
                                        style: TextStyle(
                                          color: Color(secondaryColor),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      );
                      if (res == true) {
                        // TODO: implement logout
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      }
                    },
                    tileColor: Color(lightSecondaryColor),
                    leading: Icon(Icons.logout, color: Colors.red),
                    title: Text("Logout"),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(secondaryColor),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
