import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/features/screens/home/food_list_tab.dart';
import 'package:foodi_chefs/features/screens/profile/profile_page.dart';
import 'package:foodi_chefs/features/screens/support/support_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _tabs = [HomeTab(), FoodListTab(), SupportPage(), ProfilePage()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 12.0,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (val) => setState(() => _currentIndex = val),
            selectedItemColor: Color(secondaryColor),
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Food List",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Support",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),

      body: _tabs[_currentIndex],
    );
  }
}

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  bool _isOpen = true;

  // _showOrders() {

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(primaryColor),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.menu, size: 40),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LOCATION",
                        style: TextStyle(color: Color(secondaryColor)),
                      ),
                      Row(
                        children: [
                          Text("Halal Lab Office"),
                          Icon(Icons.arrow_drop_down_sharp),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Switch(
                        value: _isOpen,
                        onChanged: (val) {},
                        activeColor: Color(secondaryColor),
                      ),
                      Text(
                        "Open",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 120,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,

                  childAspectRatio: 5 / 4,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          showDragHandle: true,
                          isDismissible: true,
                          context: context,
                          builder:
                              (context) => Container(
                                // height: MediaQuery.of(context).size.height,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "20 Running Orders",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      SizedBox(height: 10),
                                      Flexible(
                                        child: ListView(
                                          children: List.generate(
                                            10,
                                            (index) => OrderListTile(),
                                          ),
                                        ),
                                      ),
                                      // ...List.generate(
                                      //   1,
                                      //   (index) => OrderListTile(),
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: Color(lightSecondaryColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "20",
                              style: TextStyle(
                                color: Color(secondaryColor),
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              "Running Orders",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Color(lightSecondaryColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "20",
                            style: TextStyle(
                              color: Color(secondaryColor),
                              fontSize: 50,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            "Running Orders",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 300,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(lightSecondaryColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(18.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total Revenue", style: TextStyle(fontSize: 16)),
                        Text(
                          "\$2,241",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    SizedBox(
                      width: 120,
                      height: 40,
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(5),

                        value: "Daily",
                        items:
                            ["Daily", "Weekly", "Mothly", "Anuually"]
                                .map(
                                  (name) => DropdownMenuItem(
                                    value: name,
                                    child: Text(name),
                                  ),
                                )
                                .toList(),
                        onChanged: (val) {},
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See Details",
                      style: TextStyle(
                        color: Color(secondaryColor),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(secondaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 120,
                width: double.maxFinite,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(lightSecondaryColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Reviews", style: TextStyle(fontSize: 18)),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All Reviews",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(secondaryColor),
                              decorationColor: Color(secondaryColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(secondaryColor),
                          size: 40,
                        ),
                        Text(
                          "4.9",
                          style: TextStyle(
                            color: Color(secondaryColor),
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Total 20 Reviews",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderListTile extends StatelessWidget {
  const OrderListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            // height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "#Breakfast",
                  style: TextStyle(color: Color(secondaryColor), fontSize: 12),
                ),
                SizedBox(height: 5),
                Text(
                  "Chiken Thai Biriyani",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text("ID: 23445", style: TextStyle(color: Colors.grey)),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text("\$60", style: TextStyle(fontSize: 18)),
                    Spacer(),
                    MaterialButton(
                      onPressed: () {},
                      color: Color(secondaryColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Color(secondaryColor)),
                      ),
                      child: Text(
                        "Done",
                        style: TextStyle(color: Color(primaryColor)),
                      ),
                    ),
                    SizedBox(width: 5),
                    MaterialButton(
                      onPressed: () {},
                      color: Color(primaryColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Color(secondaryColor)),
                      ),
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Color(secondaryColor)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
