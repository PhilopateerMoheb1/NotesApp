import 'package:flutter/material.dart';
import 'package:notesapp/Widgets/NotesViewWidgetItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const NotesViewWidgetItem(
            title: "Philo",
            subtitle: "Philo",
          );
        },
      ),
    );
  }
}
