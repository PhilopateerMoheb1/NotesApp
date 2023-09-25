import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Cubits/AddNoteCubit/add_note_cubit_cubit.dart';
import 'TextFieldFormWidget.dart';

class AddNoteBottomSheetWidget extends StatelessWidget {
  const AddNoteBottomSheetWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubitCubit(),
      child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
          listener: (context, state) {
        if (state is AddNoteCubitFailure) {
        } else if (state is AddNoteCubitSuccess) {
          Navigator.pop(context);
        }
      }, builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNoteCubitLoading ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: const SingleChildScrollView(
              child: TextFieldFormWidget(
                firstTextFieldHintText: "Title",
                secondTextFieldHintText: "Content",
                textButton: "Add",
              ),
            ),
          ),
        );
      }),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(10),
    ),
  );
}
