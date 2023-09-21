import 'package:flutter/cupertino.dart';
import 'package:notesapp/Widgets/CustomTextFieldBottom.dart';
import 'package:notesapp/constants.dart';

import 'CustomWideButton.dart';

class TextFieldFormWidget extends StatefulWidget {
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
  State<TextFieldFormWidget> createState() => _TextFieldFormWidgetState();
}

class _TextFieldFormWidgetState extends State<TextFieldFormWidget> {
  String? title;
  String? subTitle;

  GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomTextFieldBottomSheet(
              hintText: widget.firstTextFieldHintText ?? " ",
              maxLines: 1,
              onSaved: (value) {
                title = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomTextFieldBottomSheet(
              hintText: widget.secondTextFieldHintText ?? " ",
              maxLines: 5,
              onSaved: (value) {
                subTitle = value;
              },
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          CustomWideButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            buttonText: widget.textButton ?? " ",
            backgroundColorButton: kprimayColor,
          )
        ],
      ),
    );
  }
}
