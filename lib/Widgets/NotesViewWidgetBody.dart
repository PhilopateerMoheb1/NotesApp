import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class NotesViewWidgetBody extends StatelessWidget {
  const NotesViewWidgetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffffcc80),
        borderRadius: BorderRadius.all(
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
              title: const Text(
                "Philo",
                style: TextStyle(
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
                  "Philo",
                  style: TextStyle(
                    fontSize: 16,
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
    );
  }
}
