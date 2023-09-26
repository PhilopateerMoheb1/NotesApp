// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/Cubits/AddNoteCubit/add_note_cubit_cubit.dart';
import 'package:notesapp/Models/NotesModel.dart';
import 'package:notesapp/Widgets/CustomTextFieldBottom.dart';
import 'package:notesapp/constants.dart';

import 'CustomWideButton.dart';

class TextFieldFormWidget extends StatefulWidget {
  const TextFieldFormWidget({
    super.key,
    this.firstTextFieldHintText,
    this.secondTextFieldHintText,
    this.textButton,
  });
  final String? firstTextFieldHintText;
  final String? secondTextFieldHintText;
  final String? textButton;

  @override
  State<TextFieldFormWidget> createState() => _TextFieldFormWidgetState();
}

class _TextFieldFormWidgetState extends State<TextFieldFormWidget> {
  String? title;
  String? subTitle;

  GlobalKey<FormState> formkey = GlobalKey();
  final List<Color> colors = const [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
  ];
  static int i = 0;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomTextField(
              hintText: widget.firstTextFieldHintText ?? " ",
              maxLines: 1,
              onSaved: (value) {
                title = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomTextField(
              hintText: widget.secondTextFieldHintText ?? " ",
              maxLines: 5,
              onSaved: (value) {
                subTitle = value;
              },
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          BlocBuilder<AddNoteCubitCubit, AddNoteCubitState>(
            builder: (context, state) {
              return CustomWideButton(
                isloading: state is AddNoteCubitSuccess ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    if (i == 3) {
                      i = 0;
                    }
                    _TextFieldFormWidgetState.i++;
                    formkey.currentState!.save();
                    NotesModel notesModel = NotesModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateFormat.yMMMEd()
                          .format(
                            DateTime.now(),
                          )
                          .toString(),
                      color: colors[i].value,
                    );
                    BlocProvider.of<AddNoteCubitCubit>(context)
                        .addNote(notesModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
                buttonText: widget.textButton ?? " ",
                backgroundColorButton: kprimayColor,
              );
            },
          )
        ],
      ),
    );
  }
}
