import 'package:flutter/material.dart';

import 'NotesListView.dart';

class NotesBodyView extends StatelessWidget {
  const NotesBodyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NotesListView(),
      ],
    );
  }
}
