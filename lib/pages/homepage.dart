import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moencak_apps/card.dart';
import 'package:moencak_apps/cardList.dart';
import 'package:moencak_apps/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'images/user.png',
                    width: 64.0,
                  ),
                  Container(
                    width: 8.0,
                  ),
                  Text(
                    'Hai, Ria Kusmara',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 72.0),
                    width: 8.0,
                  ),
                  Icon(
                    Icons.notifications,
                    color: Color(0xFF20774D),
                    size: 24,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.0),
                    width: 5.0,
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xFF20774D),
                    size: 24,
                  ),
                ],
              ),
            ),
            Container(
              width: 380.0,
              height: 180.0,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                    'images/promo.png',
                    fit: BoxFit.cover,
                    )
                  ),
                  Positioned(
                    bottom: 16.0,
                    left: 87,
                    child: Column(
                      children: [
                        Text(
                          'Open Trip Merbabu',
                          style: TextStyle(
                            color: Color(0xFFF5F2E8),
                            fontSize: 20.0,
                          )
                          ),
                        Text(
                          'Discount up to 70%',
                          style: TextStyle(
                            color: Color(0xFFF5F2E8),
                            fontSize: 24.0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 73,
                    height: 73,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:Color(0xFF20774D)
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.confirmation_number,
                          color: Color(0xFFF5F2E8),
                          size: 36,
                          ),
                          Container(
                            height: 4.0,
                          ),
                          Text(
                            'SIMAKSI',
                            style: TextStyle(
                            color: Color(0xFFF5F2E8)
                            ),
                          )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 73,
                    height: 73,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:Color(0xFF20774D)
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.luggage,
                          color: Color(0xFFF5F2E8),
                          size: 36,
                          ),
                          Container(
                            height: 4.0,
                          ),
                          Text(
                            'Trip',
                            style: TextStyle(
                              color: Color(0xFFF5F2E8)
                          )
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    width: 73,
                    height: 73,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:Color(0xFF20774D)
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.place,
                          color: Color(0xFFF5F2E8),
                          size: 36,
                          ),
                          Container(
                            height: 4.0,
                          ),
                          Text(
                            'Destinasi',
                            style: TextStyle(
                            color: Color(0xFFF5F2E8)
                          )
                          )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 73,
                    height: 73,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:Color(0xFF20774D)
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.feed,
                          color: Color(0xFFF5F2E8),
                          size: 36,
                          ),
                          Container(
                            height: 4.0,
                          ),
                        Text(
                          'News',
                          style: TextStyle(
                            color: Color(0xFFF5F2E8)
                        )
                        )
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
            Container(
              
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Rekomendasi Trip',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                      color:Color(0xFF20774D)
                    ),
                  ),
                  
                ],
              ),
            ),
            Container(
              height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:[
                CardTopTrip(),
                CardTopTrip(),
                CardTopTrip()
                ],
              ),
            ),
            Container(
              
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Berita Terkini',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                      color:Color(0xFF20774D)
                    ),
                  ),
                  const Text(
                    'Lihat Semua'
                  )
                ],
              ),
            ),
            CardList(),
            SizedBox(
              height: 8,
            ),
            CardList(),
            SizedBox(
              height: 8,
            ),
            CardList(), 
            SizedBox(
              height: 8,
            ),
            CardList(), 
            SizedBox(
              height: 8,
            ),
            CardList(),  
          ],
          
        ),
        ),
      ),
    );
  }
}
