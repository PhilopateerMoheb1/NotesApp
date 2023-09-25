// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/Models/NotesModel.dart';

import '../Screens/EditPageView.dart';
import 'NotesItem.dart';

class NotesViewWidgetItem extends StatelessWidget {
  const NotesViewWidgetItem({
    super.key,
    required this.notesModel,
  });

  final NotesModel notesModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          EditPageView.id,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Color(notesModel.color),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 24,
              bottom: 24,
              left: 16,
            ),
            child: NotesItem(
              notesModel: notesModel,
            ),
          ),
        ),
      ),
    );
  }
}
