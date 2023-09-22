import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWideButton extends StatelessWidget {
  const CustomWideButton({
    super.key,
    this.buttonText,
    this.onTap,
    this.backgroundColorButton,
    this.isloading = false,
  });
  final String? buttonText;
  final VoidCallback? onTap;
  final Color? backgroundColorButton;
  final bool isloading;
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
              child: isloading
                  ? const CircularProgressIndicator(
                      color: Colors.black,
                    )
                  : Text(
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
