import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Cubits/GetNoteCubit/get_note_cubit.dart';

import 'NotesListView.dart';

class NotesBodyView extends StatefulWidget {
  const NotesBodyView({
    super.key,
  });

  @override
  State<NotesBodyView> createState() => _NotesBodyViewState();
}

class _NotesBodyViewState extends State<NotesBodyView> {
  @override
  void initState() {
    BlocProvider.of<GetNoteCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NotesListView(),
      ],
    );
  }
}
