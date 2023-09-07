import 'package:flutter/material.dart';

class FormatText extends StatelessWidget {
  const FormatText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    String newText;
    String remText;

    newText = text.substring(0, 1);
    remText = text.substring(1, text.length);
    Widget texts = Text(newText,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 50,
        ));

    return Padding(
      padding: EdgeInsets.zero,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        texts,
        Text(remText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ))
      ]),
    );
  }
}
