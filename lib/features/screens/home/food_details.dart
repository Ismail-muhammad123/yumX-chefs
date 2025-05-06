import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/core/widgets/ingredient_icon.dart';
import 'package:foodi_chefs/features/screens/home/food_details_edit_form_page.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      "Food Details",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (contex) => FoodDetailsEditFormPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "EDIT",
                        style: TextStyle(
                          color: Colors.red,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(secondaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Image + Tags
                Stack(
                  children: [
                    Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      left: 16,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text("Breakfast"),
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      right: 16,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text("Delivery"),
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(width: 6),
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(width: 6),
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Title, Price & Meta
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: Text(
                        "Chicken Thai Biriyani",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      "\$60",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      size: 18,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "Kentucky 39495",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(width: 12),
                    Spacer(),
                    Icon(Icons.star, size: 20, color: Colors.red),
                    SizedBox(width: 2),
                    Text(
                      "4.9",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      "(10 Reviews)",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),

                const SizedBox(height: 24),
                const Text("INGREDIENTS", style: TextStyle(fontSize: 16)),
                const SizedBox(height: 12),

                // Ingredients grid
                SizedBox(
                  height: 200,
                  child: GridView.count(
                    crossAxisCount: 5,
                    mainAxisSpacing: 10,
                    children: [
                      IngredientIcon(label: "Salt"),
                      IngredientIcon(label: "Chicken"),
                      IngredientIcon(label: "Onion", allergy: true),
                      IngredientIcon(label: "Garlic"),
                      IngredientIcon(label: "Pappers", allergy: true),
                      IngredientIcon(label: "Ginger"),
                      IngredientIcon(label: "Broccoli"),
                      IngredientIcon(label: "Orange"),
                      IngredientIcon(label: "Walnut"),
                    ],
                    childAspectRatio: 0.8,
                  ),
                ),
                const SizedBox(height: 24),

                const Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur Maton adipiscing elit. "
                  "Bibendum in vel, mattis et amet dui mauris turpis.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
