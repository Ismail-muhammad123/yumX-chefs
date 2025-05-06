import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/core/widgets/form_field.dart';
import 'package:foodi_chefs/core/widgets/ingredient_icon.dart';
import 'package:foodi_chefs/core/widgets/primary_button.dart';

class FoodDetailsEditFormPage extends StatefulWidget {
  const FoodDetailsEditFormPage({super.key});

  @override
  State<FoodDetailsEditFormPage> createState() =>
      _FoodDetailsEditFormPageState();
}

class _FoodDetailsEditFormPageState extends State<FoodDetailsEditFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PrimaryButton(
        borderRadius: 30,
        label: "Submit",
        onPressed: () {
          // TODO: Implemet food form submit
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(secondaryColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Add Item", style: TextStyle(fontSize: 20)),
                      ),
                      Spacer(),
                      Text(
                        "REST",
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text("ITEM NAME"),
                CustomFormField(fillColor: Colors.grey.withOpacity(0.1)),
                SizedBox(height: 10),
                Text("UPLOAD IMAGE/VIDEO"),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    3,
                    (index) => Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(child: Icon(Icons.cloud_upload_outlined)),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("PRICE"),
                SizedBox(height: 6),
                Row(
                  children: [
                    Flexible(
                      child: CustomFormField(
                        fillColor: Colors.grey.withOpacity(0.1),
                      ),
                    ),
                    Checkbox(
                      checkColor: Color(secondaryColor),
                      value: false,
                      onChanged: (v) {},
                    ),
                    Text("Pick Up"),
                    SizedBox(width: 5),
                    Checkbox(
                      checkColor: Color(secondaryColor),
                      value: false,
                      onChanged: (v) {},
                    ),
                    Text("Delivery"),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "INCREDIENTS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text("Basic"),
                    Spacer(),
                    Text("See all"),
                    Icon(Icons.keyboard_arrow_down_sharp, size: 15),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    6,
                    (index) => IngredientIcon(label: "Avocado"),
                  ),
                ),
                SizedBox(height: 14),
                Row(
                  children: [
                    Text("Fruits"),
                    Spacer(),
                    Text("See all"),
                    Icon(Icons.keyboard_arrow_down_sharp, size: 15),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    6,
                    (index) => IngredientIcon(label: "Mango"),
                  ),
                ),
                SizedBox(height: 10),
                Text("DETAILS"),
                SizedBox(height: 6),
                CustomFormField(
                  fillColor: Colors.grey.withOpacity(0.1),
                  minLines: 5,
                  bolderColor: Colors.grey,
                ),
                SizedBox(height: 50),
                //  CustomFormField(fillColor: Colors.grey.withOpacity(0.1)),(minLines: 5, maxLines: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
