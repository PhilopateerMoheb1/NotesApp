import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/Widgets/AddNoteBottomSheet.dart';
import 'package:notesapp/Widgets/NotesListView.dart';

import '../Widgets/CustomIcon.dart';
import '../Widgets/NotesBodyView.dart';
import '../Widgets/NotesViewWidgetItem.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});
  static const String id = "NotesPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottomSheetWidget();
              });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Notes"),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: CustomIcon(
              icon: Icon(
                Icons.search,
                size: 28,
              ),
            ),
          ),
        ],
      ),
      body: const NotesBodyView(),
    );
  }
}
