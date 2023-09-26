import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/AddNoteBottomSheet.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
  });
  final String? hintText;
  final int? maxLines;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
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
