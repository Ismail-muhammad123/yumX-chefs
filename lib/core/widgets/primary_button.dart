import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class PrimaryButton extends StatelessWidget {
  final double? borderRadius;
  final String label;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    this.borderRadius,
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
      ),
      height: 50,
      minWidth: 200,
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(color: Color(primaryColor), fontSize: 18),
      ),
    );
  }
}
