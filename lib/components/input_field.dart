import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    this.placeholder,
    this.isSecure = false,
  });

  final bool isSecure;
  final String? placeholder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        obscureText: isSecure,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 234, 234, 234),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: InputBorder.none,
          hintText: placeholder,
        ),
      ),
    );
  }
}
