import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/CustomWideButton.dart';

import '../constants.dart';
import 'CustomTextFieldBottom.dart';

class AddNoteBottomSheetWidget extends StatelessWidget {
  const AddNoteBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    InputDecoration inputDecoration = InputDecoration(
      contentPadding: const EdgeInsets.only(
        left: 10,
        top: 50,
        bottom: 50,
      ),
      focusedBorder: buildBorder(kprimayColor),
      enabledBorder: buildBorder(),
      border: buildBorder(),
      hintText: "Content",
      hintStyle: const TextStyle(
        color: Colors.greenAccent,
      ),
    );
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: CustomTextFieldBottomSheet(
            hintText: "Title",
            maxLines: 1,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: CustomTextFieldBottomSheet(
            hintText: "Content",
            maxLines: 5,
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        CustomWideButton(
          buttonText: "Add",
          backgroundColorButton: kprimayColor,
        )
      ],
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
