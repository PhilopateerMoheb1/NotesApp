import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWideButton extends StatelessWidget {
  CustomWideButton({
    super.key,
    this.buttonText,
    this.onTap,
    this.backgroundColorButton,
  });
  String? buttonText;
  VoidCallback? onTap;
  final Color? backgroundColorButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: backgroundColorButton ?? Colors.white,
          ),
          height: 45,
          width: double.infinity,
          child: Center(
              child: Text(
            buttonText ?? " ",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          )),
        ),
      ),
    );
  }
}
