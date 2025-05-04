import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

import 'package:foodi_chefs/core/widgets/primary_button.dart';

class UserReviewFormPage extends StatefulWidget {
  const UserReviewFormPage({super.key});

  @override
  State<UserReviewFormPage> createState() => _UserReviewFormPageState();
}

class _UserReviewFormPageState extends State<UserReviewFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
        title: Text("User Review"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PrimaryButton(
        label: "Submit",
        onPressed: () {
          // TODO implement submit review
        },
      ),
      body: Column(
        children: [
          TextFormField(
            minLines: 5,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(secondaryColor)),
              ),
              hintText: "Write message",
              fillColor: Colors.grey.withOpacity(0.5),
            ),
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.star_border),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
