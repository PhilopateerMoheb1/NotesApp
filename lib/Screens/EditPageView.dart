import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/TextFieldFormWidget.dart';

import '../Widgets/CustomIcon.dart';

class EditPageView extends StatelessWidget {
  const EditPageView({super.key});
  static const String id = "Edit Page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Notes"),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: CustomIcon(
              icon: Icon(
                Icons.done,
                size: 28,
              ),
            ),
          ),
        ],
      ),
      body: const TextFieldFormWidget(
        firstTextFieldHintText: "Title",
        secondTextFieldHintText: "Content",
        textButton: "Add",
      ),
    );
  }
}
