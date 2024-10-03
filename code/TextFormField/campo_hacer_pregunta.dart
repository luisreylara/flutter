import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CampoHacerPregunta extends StatelessWidget {
  const CampoHacerPregunta({super.key});

  @override
  Widget build(BuildContext context) {
    final textControl = TextEditingController();
    final mifocusNode = FocusNode();
    return TextFormField(
      onTapOutside: (event) {
        mifocusNode.requestFocus();
      },
      focusNode: mifocusNode,
      onFieldSubmitted: (value) {
        textControl.clear();
        mifocusNode.requestFocus();
        print(value);
      },
      controller: textControl,
      decoration: InputDecoration(
          hintText: 'realizar tu pregunta y finalizar con ?',
          filled: true,
          suffixIcon: IconButton(
              onPressed: () {
                final textValue = textControl.value.text;
                print(textValue);
                textControl.clear();
                mifocusNode.requestFocus();
              },
              icon: Icon(Icons.send_outlined))),
    );
  }
}
