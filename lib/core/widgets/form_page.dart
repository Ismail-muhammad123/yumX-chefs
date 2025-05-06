import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class FormPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget form;
  final bool showBackButton;

  const FormPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.form,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(secondaryColor),
      body: SafeArea(
        child: Column(
          children: [
            showBackButton
                ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(primaryColor),
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(8),
                          alignment: Alignment.center,

                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(secondaryColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                : SizedBox(),
            SizedBox(height: 50),
            Text(
              "Yum X",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(primaryColor),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(primaryColor),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(primaryColor), fontSize: 16),
            ),
            const SizedBox(height: 40),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(backgroundColor),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16.0),
                child: form,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
