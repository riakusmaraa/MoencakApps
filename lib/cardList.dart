import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Color(0xff313131).withOpacity(0.3),
                blurRadius: 18,
                offset: Offset(0, 4))
          ]),
          child: Image.asset(
            'images/gunung1.jpg',
            height: 96,
            width: 96,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Gunung Bromo akan dibuka \nkembali Bulan Oktober",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500
              ),
              // style: Paragraph4.copyWith(color: text4),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Read More",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF20774D)
              ),
              // style: Heading4.copyWith(color: text1),
            ),
          ],
        )
      ],
    ),
    );
  }
}
