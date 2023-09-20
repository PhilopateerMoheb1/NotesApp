import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class NotesViewWidgetItem extends StatelessWidget {
  const NotesViewWidgetItem({
    super.key,
    required this.title,
    this.subtitle,
    this.color,
  });

  final String title;
  final String? subtitle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Colors.red,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 24,
            bottom: 24,
            left: 16,
          ),
          child: Column(
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
          ),
        ),
      ),
    );
  }
}
