import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final bool obscureText;
  final IconData? prefixIcon;
  final String? labelText;
  final String hintText;
  final String? helperText;
  final String? counterText;
  final String propertyKey;
  final Map<String, dynamic> object;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int? maxLength;

  const CustomInput(
      {Key? key,
      this.obscureText = false,
      this.prefixIcon,
      this.labelText,
      this.counterText,
      this.maxLength,
      this.keyboardType,
      this.helperText,
      this.validator,
      required this.propertyKey,
      required this.object,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      keyboardType: keyboardType,
      validator: validator,
      onChanged: (value) {
        object[propertyKey] = value;
      },
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          counterText: counterText,
          helperText: helperText,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          border: const OutlineInputBorder()),
    );
  }
}
