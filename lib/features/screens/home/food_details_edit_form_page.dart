import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
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
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios, color: Color(secondaryColor)),
        actions: [
          TextButton(
            onPressed: () {
              // TODO implement form reste
            },
            child: Text("REST", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PrimaryButton(
        label: "Submit",
        onPressed: () {
          // TODO: Implemet food form submit
        },
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Text("ITEM NAME"),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              hintText: "Mesjbhgbhfdjm",
            ),
          ),
          SizedBox(height: 10),
          Text("UPLOAD IMAGE/VIDEO"),
          SizedBox(height: 6),
          Row(
            children: List.generate(
              3,
              (index) => Container(
                height: 50,
                width: 50,
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
              Flexible(child: TextFormField()),
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
          Text("INCREDIENTS"),
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
            children: List.generate(
              6,
              (index) => IngredientIcon(label: "Avocado"),
            ),
          ),
          SizedBox(height: 6),
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
            children: List.generate(
              6,
              (index) => IngredientIcon(label: "Mango"),
            ),
          ),
          SizedBox(height: 10),
          Text("DETAILS"),
          SizedBox(height: 6),
          TextFormField(minLines: 5),
        ],
      ),
    );
  }
}
