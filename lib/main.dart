import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Models/NotesModel.dart';
import 'package:notesapp/Screens/EditPageView.dart';
import 'package:notesapp/Screens/NotesPage.dart';
import 'package:notesapp/SimpleBlocObserver.dart';
import 'package:notesapp/constants.dart';
import 'package:bloc/bloc.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NotesModelAdapter());

  await Hive.openBox<NotesModel>(knotesBox);
  Bloc.observer = SimpleBlocObserver();
  final WidgetsBinding binding = WidgetsFlutterBinding.ensureInitialized();
  assert(binding.debugCheckZone('runApp'));
  binding
    ..scheduleAttachRootWidget(binding.wrapWithDefaultView(const NotesApp()))
    ..scheduleWarmUpFrame();
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        NotesPage.id: (context) => const NotesPage(),
        EditPageView.id: (context) => const EditPageView(),
      },
      initialRoute: NotesPage.id,
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
      ),
    );
  }
}
