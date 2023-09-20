import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Widgets/CustomIcon.dart';
import '../Widgets/NotesViewWidgetBody.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});
  static const String id = "NotesPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const NotesViewWidgetBody(
        title: 'Philo',
        subtitle: "Philoooooooooooooooooooooo",
      ),
    );
  }
}
