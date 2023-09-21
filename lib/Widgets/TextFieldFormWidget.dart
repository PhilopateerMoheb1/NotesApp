import 'package:flutter/cupertino.dart';
import 'package:notesapp/Widgets/CustomTextFieldBottom.dart';
import 'package:notesapp/constants.dart';

import 'CustomWideButton.dart';

class TextFieldFormWidget extends StatelessWidget {
  const TextFieldFormWidget({
    super.key,
    this.firstTextFieldHintText,
    this.secondTextFieldHintText,
    this.textButton,
  });
  final String? firstTextFieldHintText;
  final String? secondTextFieldHintText;
  final String? textButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomTextFieldBottomSheet(
            hintText: firstTextFieldHintText ?? " ",
            maxLines: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomTextFieldBottomSheet(
            hintText: secondTextFieldHintText ?? " ",
            maxLines: 5,
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        CustomWideButton(
          buttonText: textButton ?? " ",
          backgroundColorButton: kprimayColor,
        )
      ],
    );
  }
}
