import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/CustomWideButton.dart';

class AddNoteBottomSheetWidget extends StatelessWidget {
  const AddNoteBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                left: 10,
                top: 25,
                bottom: 25,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              hintText: "Title",
              hintStyle: TextStyle(
                color: Colors.greenAccent,
              ),
            ),
            style: TextStyle(
              color: Colors.lightBlue,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            maxLines: 4,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                left: 10,
                top: 50,
                bottom: 50,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              hintText: "Content",
              hintStyle: TextStyle(
                color: Colors.greenAccent,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        CustomWideButton(
          buttonText: "Add",
          backgroundColorButton: Colors.greenAccent,
        )
      ],
    );
  }
}
