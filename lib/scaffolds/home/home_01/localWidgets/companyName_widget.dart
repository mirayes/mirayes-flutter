import 'package:flutter/material.dart';

// TODO: Tornar título dinâmico
// BODY: deve aceitar imagens ou textos

class CompanyNameWidget extends StatelessWidget {
  const CompanyNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Advogados APP',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
