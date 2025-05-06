import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/features/screens/home/food_details.dart';

class FoodListTab extends StatefulWidget {
  const FoodListTab({super.key});

  @override
  State<FoodListTab> createState() => _FoodListTabState();
}

class _FoodListTabState extends State<FoodListTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Text("My FoodList", style: TextStyle(fontSize: 20)),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(lightSecondaryColor),
                            border: Border.all(color: Color(secondaryColor)),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.add, color: Color(secondaryColor)),
                        ),
                        Text("Add Item"),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "All",
                    style: TextStyle(
                      color: Color(secondaryColor),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text("Total 03 Items", style: TextStyle(color: Colors.grey)),
              SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemBuilder:
                      (context, index) => GestureDetector(
                        onTap:
                            () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FoodDetailsScreen(),
                              ),
                            ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Chiken Thai Biriyani",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    color: Color(lightSecondaryColor),
                                    child: Text(
                                      "Breakfast",
                                      style: TextStyle(
                                        color: Color(secondaryColor),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),

                                  Row(
                                    children: [
                                      Icon(Icons.star, size: 10),
                                      Text(
                                        "4.9",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(secondaryColor),
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "(10 Reviews)",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.more_horiz),
                                  SizedBox(height: 10),
                                  Text(
                                    "\$30",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Pick Up",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
