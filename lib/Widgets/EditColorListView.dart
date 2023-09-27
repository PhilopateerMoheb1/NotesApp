import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Cubits/AddNoteCubit/add_note_cubit_cubit.dart';
import 'package:notesapp/Widgets/ColorsListView.dart';
import 'package:notesapp/constants.dart';

import '../Models/NotesModel.dart';

class EditColorListView extends StatefulWidget {
  EditColorListView({super.key, required this.note});
  bool isActive = false;

  final NotesModel note;

  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
  late int i;
  @override
  void initState() {
    i = kcolorList.indexOf(
      Color(widget.note.color),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kcolorList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              i = index;
              widget.note.color = kcolorList[i].value;
              setState(() {});
            },
            child: ColorItem(
              color: kcolorList[index],
              isActive: i == index,
            ),
          );
        },
      ),
    );
  }
}
