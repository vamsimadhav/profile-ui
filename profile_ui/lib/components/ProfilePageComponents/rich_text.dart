import 'package:flutter/material.dart';


class richText extends StatelessWidget {
  final String txt;
  final double siz;
  final Color clr;
  final FontWeight fw;

  const richText({Key key, @required this.txt, @required this.siz, @required this.clr, this.fw}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: txt,
        style: TextStyle(
            fontFamily: 'Poppins',
            color: clr,
            fontWeight: fw,
            fontSize: siz),
      ),
    );
  }
}
