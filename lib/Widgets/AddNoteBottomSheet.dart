import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/CustomWideButton.dart';

import '../constants.dart';
import 'CustomTextFieldBottom.dart';
import 'TextFieldFormWidget.dart';

class AddNoteBottomSheetWidget extends StatelessWidget {
  const AddNoteBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: TextFieldFormWidget(
        firstTextFieldHintText: "Title",
        secondTextFieldHintText: "Content",
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(10),
    ),
  );
}
