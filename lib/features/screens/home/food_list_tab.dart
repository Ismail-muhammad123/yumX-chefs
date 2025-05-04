import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class FoodListTab extends StatefulWidget {
  const FoodListTab({super.key});

  @override
  State<FoodListTab> createState() => _FoodListTabState();
}

class _FoodListTabState extends State<FoodListTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
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
                  (context, index) => Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chiken Thai Biriyani",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Breakfast",
                            style: TextStyle(
                              color: Color(secondaryColor),
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, size: 10),
                              Text(
                                "4.9",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(secondaryColor),
                                ),
                              ),
                              Text(
                                "(10 Reviews)",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.more_horiz),
                          Text(
                            "\$30",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Pick Up", style: TextStyle(color: Colors.grey)),
                        ],
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
