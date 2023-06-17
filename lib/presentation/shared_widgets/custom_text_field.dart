import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.label,
    required this.errorText,
    required this.icon,
    required this.onChange,
    this.isObscure = false,
  }) : super(key: key);
  final Function(String) onChange;
  final String label;
  final String? errorText;
  final IconData icon;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        onChange(value);
      },
      obscureText: isObscure,
      decoration: InputDecoration(
        errorText: errorText,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: label,
        hintText: isObscure ? "Create a strong password" : '',
        prefixIcon: Icon(
          icon,
          color: Colors.blue,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black38, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 1.5),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38, width: 1.0),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
