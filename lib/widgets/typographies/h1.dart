import 'package:flutter/material.dart';

class MirayesTypographyH1 extends StatefulWidget {
  final String text;
  final Color color;

  const MirayesTypographyH1(
      {Key? key, required this.text, this.color = Colors.black})
      : super(key: key);

  @override
  _MirayesTypographyH1State createState() => _MirayesTypographyH1State();
}

class _MirayesTypographyH1State extends State<MirayesTypographyH1> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        color: widget.color,
        fontSize: 46.0,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
