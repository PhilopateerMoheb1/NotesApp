import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/Models/NotesModel.dart';

import '../../constants.dart';

part 'get_note_state.dart';

class GetNoteCubit extends Cubit<GetNoteState> {
  GetNoteCubit() : super(GetNoteInitial());
  List<NotesModel>? notes;

  fetchAllNotes() {
    var noteBox = Hive.box<NotesModel>(knotesBox);
    notes = noteBox.values.toList();
  }
}
