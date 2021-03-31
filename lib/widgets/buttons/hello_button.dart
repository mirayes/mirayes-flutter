import 'package:flutter/material.dart';

class HelloButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Hello From Mirayes'),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(20),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
