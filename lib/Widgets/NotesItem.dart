import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/Cubits/GetNoteCubit/get_note_cubit.dart';
import 'package:notesapp/Models/NotesModel.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({
    super.key,
    required this.notesModel,
  });

  final NotesModel notesModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          title: Text(
            notesModel.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 26,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10,
            ),
            child: Text(
              notesModel.subTitle,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(.4),
              ),
            ),
          ),
          trailing: IconButton(
            icon: const Icon(
              FontAwesomeIcons.trash,
              size: 24,
              color: Colors.black,
            ),
            onPressed: () {
              notesModel.delete();
              BlocProvider.of<GetNoteCubit>(context).fetchAllNotes();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Text(
            DateFormat.yMMMEd().format(DateTime.now()),
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(.4),
            ),
          ),
        ),
      ],
    );
  }
}
