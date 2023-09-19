import 'package:flutter/material.dart';
import 'package:notesapp/Screens/NotesPage.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NotesPage.id: (context) => const NotesPage(),
      },
      initialRoute: NotesPage.id,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
