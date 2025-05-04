import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      // style: ElevatedButton.styleFrom(
      //   padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      // ),
      color: Color(secondaryColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      height: 60,
      minWidth: 50,
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
