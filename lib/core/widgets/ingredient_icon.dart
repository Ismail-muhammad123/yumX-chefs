import 'package:flutter/material.dart';

class IngredientIcon extends StatelessWidget {
  final String label;
  final bool allergy;

  const IngredientIcon({super.key, required this.label, this.allergy = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.05),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.restaurant_menu, color: Colors.red),
        ),
        const SizedBox(height: 4),
        Text(
          "$label${allergy ? " (Allergy)" : ""}",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
