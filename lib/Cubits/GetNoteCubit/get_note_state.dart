part of 'get_note_cubit.dart';

@immutable
sealed class GetNoteState {}

final class GetNoteInitial extends GetNoteState {}

final class GetNoteSuccess extends GetNoteState {
  List<NotesModel> notes;
  GetNoteSuccess({required this.notes});
}

final class GetNoteFailure extends GetNoteState {
  String errMsg;
  GetNoteFailure({required this.errMsg});
}

final class GetNoteLoading extends GetNoteState {}
