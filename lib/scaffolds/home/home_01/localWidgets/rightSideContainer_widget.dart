import 'package:flutter/material.dart';

class RightSideContainer extends StatelessWidget {
  const RightSideContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        color: Color(0xffF7F7FF),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.3,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
