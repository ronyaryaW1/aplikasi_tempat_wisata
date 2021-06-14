import 'package:flutter/material.dart';

var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // biar layoutnya fullscreen
        children: <Widget>[
          Image.asset('assets/lembang.jpg'),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: Text(
              'Farm House Lembang',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Staatliches'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // buat jarak antar kotak icon
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.calendar_today),
                    SizedBox(height: 8.0),
                    Text(
                      'Open Everyday',
                      style: informationTextStyle,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.schedule),
                    SizedBox(height: 8.0),
                    Text('09.00 - 10.00'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.money_off),
                    SizedBox(height: 8.0),
                    Text(
                      '25.000',
                      style: informationTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              )),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: (Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg')),
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: (Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg')),
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: (Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg')),
                    ))
              ],
            ),
          )
        ],
      ),
    )));
  }
}
