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
      body: Column(
        children: [
          showBackButton
              ? Positioned(
                top: 50,
                left: 30,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.arrow_back_ios),
                ),
              )
              : SizedBox(),
          Text("Yum X"),
          const SizedBox(height: 100),
          Text(title),
          const SizedBox(height: 20),
          Text(subtitle),
          const SizedBox(height: 20),

          Container(
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
        ],
      ),
    );
  }
}
