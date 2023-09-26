import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/AddNoteBottomSheet.dart';

import '../Widgets/CustomIcon.dart';
import '../Widgets/NotesBodyView.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});
  static const String id = "NotesPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
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
        actions: [
          Padding(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(right: 20.0),
            child: CustomIcon(
              iconData: Icons.search,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: const NotesBodyView(),
    );
  }
}
