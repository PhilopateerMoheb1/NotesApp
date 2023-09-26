// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Cubits/GetNoteCubit/get_note_cubit.dart';
import 'package:notesapp/Models/NotesModel.dart';
import 'package:notesapp/Widgets/CustomTextFieldBottom.dart';
import 'package:notesapp/constants.dart';

import 'CustomWideButton.dart';

class EditForm extends StatefulWidget {
  const EditForm({
    super.key,
    this.firstTextFieldHintText,
    this.secondTextFieldHintText,
    this.textButton,
    required this.notesModel,
  });
  final String? firstTextFieldHintText;
  final String? secondTextFieldHintText;
  final String? textButton;
  final NotesModel notesModel;

  @override
  State<EditForm> createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomTextField(
            hintText: widget.notesModel.title ?? " ",
            maxLines: 1,
            onChanged: (value) {
              title = value;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomTextField(
            hintText: widget.notesModel.subTitle ?? " ",
            maxLines: 5,
            onChanged: (value) {
              subTitle = value;
            },
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        CustomWideButton(
          onTap: () {
            widget.notesModel.title = title ?? widget.notesModel.title;
            widget.notesModel.subTitle = subTitle ?? widget.notesModel.subTitle;
            widget.notesModel.save();
            BlocProvider.of<GetNoteCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
          buttonText: widget.textButton ?? " ",
          backgroundColorButton: kprimayColor,
        ),
      ],
    );
  }
}
