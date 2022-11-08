import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardTopTrip extends StatelessWidget {
  const CardTopTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        margin: const EdgeInsets.only(left: 24),
        
        width: 258,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Color(0xff313131).withOpacity(0.1),
                blurRadius: 18,
                offset: Offset(0, 4))
          ]
        ),
        child: Column(
          children: <Widget>[
            Image.asset('images/bromo.png',fit: BoxFit.cover),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Gunung Merbabu',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        const Text(
                          'Wonosobo, Jawa Tengah',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54
                          ),
                          )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Color(0xFFEBEF37),),
                        Text('4.8', style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),),
                      ],
                    )
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
