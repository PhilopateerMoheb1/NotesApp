import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/AddNoteBottomSheet.dart';

import '../constants.dart';

class CustomTextFieldBottomSheet extends StatelessWidget {
  const CustomTextFieldBottomSheet({
    super.key,
    this.hintText,
    this.maxLines = 1,
  });
  final String? hintText;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
