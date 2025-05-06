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
      backgroundColor: Color(primaryColor),

      appBar: AppBar(
        backgroundColor: Color(primaryColor),
        surfaceTintColor: Color(primaryColor),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios),
        ),
        elevation: 0,
        title: Text("User Review"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PrimaryButton(
        borderRadius: 30,
        label: "Submit",
        onPressed: () {
          // TODO implement submit review
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              minLines: 10,
              maxLines: 15,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(secondaryColor),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Write message",
                fillColor: Colors.grey,
              ),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.star, color: Colors.grey, size: 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
