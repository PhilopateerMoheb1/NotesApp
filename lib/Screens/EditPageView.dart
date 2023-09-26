import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/EditForm.dart';

import '../Models/NotesModel.dart';
import '../Widgets/CustomIcon.dart';

class EditPageView extends StatelessWidget {
  const EditPageView({super.key, this.note});
  static const String id = "Edit Page";
  final NotesModel? note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        "Edit Note",
        Icons.done,
      ),
      body: EditForm(
        notesModel: ModalRoute.of(context)!.settings.arguments as NotesModel,
        firstTextFieldHintText: "Title",
        secondTextFieldHintText: "Content",
        textButton: "Edit",
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
          iconData: iconData,
          onPressed: () {},
        ),
      ),
    ],
  );
}
