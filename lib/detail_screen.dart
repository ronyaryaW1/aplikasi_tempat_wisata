import 'package:aplikasi_tempat_wisata/model/tourism_place.dart';
import 'package:flutter/material.dart';

var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  DetailScreen({@required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // biar layoutnya fullscreen
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(place.imageAsset),
              SafeArea(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        FavoriteButton()
                      ],
                    )),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: Text(
              place.name,
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
                      place.openDays,
                      style: informationTextStyle,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.schedule),
                    SizedBox(height: 8.0),
                    Text(place.openTime),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.money_off),
                    SizedBox(height: 8.0),
                    Text(
                      place.ticketPrice,
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
                place.description,
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              )),
          Container(
            height: 150,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url) {
                  return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: (Image.network(url)),
                      ));
                }).toList()),
          )
        ],
      ),
    )));
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
