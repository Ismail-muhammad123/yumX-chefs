import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final TextEditingController? fieldController;
  final String? label;
  final bool isPassword;
  final Color? fillColor;
  final Color? bolderColor;
  final int? minLines;
  const CustomFormField({
    super.key,
    this.label,
    this.fillColor,
    this.fieldController,
    this.minLines,
    this.bolderColor,
    this.isPassword = false,
  });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.fieldController,
      minLines: widget.minLines,
      maxLines: widget.minLines,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(12.0),
        labelText: widget.label,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
              widget.bolderColor == null
                  ? BorderSide.none
                  : BorderSide(color: widget.bolderColor!),
        ),

        fillColor: widget.fillColor ?? Colors.grey.withOpacity(0.3),
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
