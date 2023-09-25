import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/AddNoteBottomSheet.dart';

import '../constants.dart';

class CustomTextFieldBottomSheet extends StatelessWidget {
  const CustomTextFieldBottomSheet({
    super.key,
    this.hintText,
    this.maxLines = 1,
    this.onSaved,
  });
  final String? hintText;
  final int? maxLines;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        }
      },
      onSaved: onSaved,
      textAlignVertical: TextAlignVertical.bottom,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          left: 10,
          top: 25,
          bottom: 25,
        ),
        focusedBorder: buildBorder(kprimayColor),
        enabledBorder: buildBorder(),
        border: buildBorder(),
        hintText: hintText ?? " ",
        hintStyle: const TextStyle(
          color: kprimayColor,
        ),
      ),
      style: const TextStyle(
        color: kprimayColor,
      ),
    );
  }
}
