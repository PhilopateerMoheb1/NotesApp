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
      appBar: buildAppBar(
        "Edit Page",
        Icons.done,
      ),
      body: const TextFieldFormWidget(
        firstTextFieldHintText: "Title",
        secondTextFieldHintText: "Content",
        textButton: "Add",
      ),
    );
  }
}

AppBar buildAppBar(String name, IconData iconData) {
  return AppBar(
    backgroundColor: Colors.transparent,
    title: Text(name),
    elevation: 0,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: CustomIcon(
          icon: Icon(
            iconData,
            size: 28,
          ),
        ),
      ),
    ],
  );
}
