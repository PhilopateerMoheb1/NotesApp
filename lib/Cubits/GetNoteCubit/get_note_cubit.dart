import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/Models/NotesModel.dart';

import '../../constants.dart';

part 'get_note_state.dart';

class GetNoteCubit extends Cubit<GetNoteState> {
  GetNoteCubit() : super(GetNoteInitial());

  fetchAllNotes() {
    try {
      var noteBox = Hive.box<NotesModel>(knotesBox);

      emit(
        GetNoteSuccess(
          notes: noteBox.values.toList(),
        ),
      );
    } on Exception catch (e) {
      emit(
        GetNoteFailure(
          errMsg: e.toString(),
        ),
      );
    }
  }
}
