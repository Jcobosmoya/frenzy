import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 375, // ancho deseado
        height: 49,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Agregar el radio del borde aquí
                borderSide: BorderSide(color: Color(0xFFC2D2E9)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Agregar el radio del borde aquí
                borderSide: BorderSide(color: Colors.grey),
              ),
              fillColor: Color(0xFFC2D2E9),
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(12.0, 13.0, 12.0, 13.0), // Ajustar los valores de top y bottom aquí
            ),
          ),
        ),
      );
  }
}