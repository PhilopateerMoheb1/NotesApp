import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 26,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 10,
            ),
            child: Text(
              subtitle ?? " ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(.4),
              ),
            ),
          ),
          trailing: IconButton(
            icon: const Icon(
              FontAwesomeIcons.trash,
              size: 24,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Text(
            DateFormat.yMMMEd().format(DateTime.now()),
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(.4),
            ),
          ),
        ),
      ],
    );
  }
}
