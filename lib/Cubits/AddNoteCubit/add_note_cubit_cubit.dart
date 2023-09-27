import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/Models/NotesModel.dart';
import 'package:notesapp/constants.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  Color color = const Color.fromARGB(0, 255, 0, 0);
  addNote(NotesModel notesModel) async {
    emit(AddNoteCubitLoading());
    notesModel.color = color.value;
    try {
      var noteBox = Hive.box<NotesModel>(knotesBox);
      await noteBox.add(notesModel);
      emit(AddNoteCubitSuccess());
    } on Exception catch (e) {
      emit(
        AddNoteCubitFailure(msg: e.toString()),
      );
    }
  }
}
