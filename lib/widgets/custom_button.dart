import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 46, 59, 98)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            // borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
      child: Text(text,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.703846,
            fontSize: 16.0,
          )),
    );
  }
}
