import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final TextEditingController fieldController;
  final String label;
  final bool isPassword;
  const CustomFormField({
    super.key,
    required this.label,
    required this.fieldController,
    this.isPassword = false,
  });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.fieldController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(6.0),
        labelText: widget.label,
        border: InputBorder.none,
        fillColor: Colors.grey,
        filled: true,
        suffix:
            widget.isPassword
                ? GestureDetector(
                  child: Icon(Icons.visibility_off),
                  onTap: () => setState(() => showPassword = !showPassword),
                )
                : null,
      ),
    );
  }
}
