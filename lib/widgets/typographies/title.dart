import 'package:flutter/material.dart';

class MirayesTypographTitle extends StatefulWidget {
  final String title;

  const MirayesTypographTitle({Key? key, required this.title})
      : super(key: key);

  @override
  _MirayesTypographTitleState createState() => _MirayesTypographTitleState();
}

class _MirayesTypographTitleState extends State<MirayesTypographTitle> {
  @override
  Widget build(BuildContext context) {
    Color getBorderBottomColor() {
      if (Theme.of(context).textTheme.bodyText1!.color != null) {
        return Theme.of(context).textTheme.bodyText1!.color!;
      }
      return Colors.black;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 10,
          width: 25,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  // color: Colors.white,
                  color: getBorderBottomColor(),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
