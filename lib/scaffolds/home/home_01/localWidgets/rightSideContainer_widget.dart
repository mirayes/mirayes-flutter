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
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Text(''),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_right_rounded,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
