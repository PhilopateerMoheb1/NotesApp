import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Cubits/AddNoteCubit/add_note_cubit_cubit.dart';
import 'package:notesapp/Cubits/GetNoteCubit/get_note_cubit.dart';
import 'package:notesapp/Models/NotesModel.dart';
import 'package:notesapp/Screens/EditPageView.dart';
import 'package:notesapp/Widgets/NotesViewWidgetItem.dart';

class NotesListView extends StatelessWidget {
  NotesListView({super.key});

  final List<Color> colors = const [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
  ];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNoteCubit, GetNoteState>(
      builder: (context, state) {
        List<NotesModel> notes =
            BlocProvider.of<GetNoteCubit>(context).notes ?? [];
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                if (i == 4) {
                  i = 0;
                }
                return NotesViewWidgetItem(
                  title: notes[index].title,
                  subtitle: notes[index].subTitle,
                  color: colors[i++],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
