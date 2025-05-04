import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/features/screens/home/food_list_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _tabs = [HomeTab(), FoodListTab()];
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

  _showOrders() async {
    showModalBottomSheet(
      context: context,
      builder:
          (context) => Column(
            children: [
              Text("20 Running Orders"),
              SizedBox(height: 10),
              ListView.builder(
                itemBuilder:
                    (context, index) => Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "#Breakfast",
                              style: TextStyle(
                                color: Color(secondaryColor),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "Chiken Thai Biriyani",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "ID: 23445",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Row(
                              children: [
                                Text("\$60"),
                                Spacer(),
                                MaterialButton(
                                  onPressed: () {},
                                  color: Color(secondaryColor),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                      color: Color(secondaryColor),
                                    ),
                                  ),
                                  child: Text(
                                    "Done",
                                    style: TextStyle(
                                      color: Color(primaryColor),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                MaterialButton(
                                  onPressed: () {},
                                  color: Color(primaryColor),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                      color: Color(secondaryColor),
                                    ),
                                  ),
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                      color: Color(secondaryColor),
                                    ),
                                  ),
                                ),
                              ],
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.menu),
            Column(
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
            Column(
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
        GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 5 / 4,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(lightSecondaryColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "20",
                    style: TextStyle(
                      color: Color(secondaryColor),
                      fontSize: 30,
                    ),
                  ),
                  Text("Running Orders", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(lightSecondaryColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "20",
                    style: TextStyle(
                      color: Color(secondaryColor),
                      fontSize: 30,
                    ),
                  ),
                  Text("Running Orders", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 300,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Color(lightSecondaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(12.0),
          child: Row(
            children: [
              Column(
                children: [
                  Text("Total Revenue", style: TextStyle(fontSize: 18)),
                  Text(
                    "\$2,241",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              DropdownButton(
                items:
                    ["Daily", "Weekly", "Mothly", "Anuually"]
                        .map(
                          (name) =>
                              DropdownMenuItem(value: name, child: Text(name)),
                        )
                        .toList(),
                onChanged: (val) {},
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 150,
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
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Color(secondaryColor)),
                  Text("4.9"),
                  Text("Total 20 Reviews"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
