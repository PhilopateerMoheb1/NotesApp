import 'package:flutter/material.dart';
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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            if (i == 4) {
              i = 0;
            }
            return NotesViewWidgetItem(
              title: "Philo",
              subtitle: "Philo",
              color: colors[i++],
            );
          },
        ),
      ),
    );
  }
}
