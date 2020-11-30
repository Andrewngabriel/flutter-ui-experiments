import 'package:flutter/material.dart';
import 'package:music_app/screens/player_screen.dart';
import '../widgets/songCover.dart';

class ArtistScreen extends StatelessWidget {
  static final routeName = '/artist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Image.network(
                  'https://cdn.stocksnap.io/img-thumbs/960w/black-dog_YR9K0G2JEM.jpg',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                ),
                Positioned(
                  bottom: 80,
                  left: 25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Artist'.toUpperCase()),
                      Text(
                        'Rhye',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 30,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          minWidth: 30,
                          elevation: 0,
                          padding: EdgeInsets.all(0),
                          color: Colors.black26,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_sharp,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          elevation: 0,
                          minWidth: 20,
                          padding: EdgeInsets.all(0),
                          color: Colors.black26,
                          shape: RoundedRectangleBorder(),
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.7,
              child: Container(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          Text(
                            'Songs',
                            style: TextStyle(
                              color: Color(0xff535353),
                            ),
                          ),
                          Text(
                            '112',
                            style: TextStyle(
                              color: Color(0xff535353),
                            ),
                          )
                        ]),
                        Column(children: [
                          Text(
                            'Followers',
                            style: TextStyle(
                              color: Color(0xff535353),
                            ),
                          ),
                          Text(
                            '60M',
                            style: TextStyle(
                              color: Color(0xff535353),
                            ),
                          )
                        ]),
                        Column(children: [
                          Text(
                            'Following',
                            style: TextStyle(
                              color: Color(0xff535353),
                            ),
                          ),
                          Text(
                            '1563',
                            style: TextStyle(
                              color: Color(0xff535353),
                            ),
                          )
                        ]),
                      ],
                    ),
                    Text(
                      'Popular',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SongCover(
                                imageURL:
                                    'https://cdn.stocksnap.io/img-thumbs/960w/vintage-binoculars_6PUYO0NPT7.jpg',
                                name: 'Summer Days',
                              ),
                              SizedBox(width: 20),
                              SongCover(
                                imageURL:
                                    'https://cdn.stocksnap.io/img-thumbs/960w/vintage-binoculars_6PUYO0NPT7.jpg',
                                name: 'Summer Days',
                              ),
                              SizedBox(width: 20),
                              SongCover(
                                imageURL:
                                    'https://cdn.stocksnap.io/img-thumbs/960w/vintage-binoculars_6PUYO0NPT7.jpg',
                                name: 'Summer Days',
                              ),
                              SizedBox(width: 20),
                              SongCover(
                                imageURL:
                                    'https://cdn.stocksnap.io/img-thumbs/960w/vintage-binoculars_6PUYO0NPT7.jpg',
                                name: 'Summer Days',
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xff141414),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 1.82,
              right: 20,
              child: MaterialButton(
                child: Icon(Icons.play_arrow, size: 45),
                elevation: 0,
                padding: EdgeInsets.all(10),
                shape: CircleBorder(),
                color: Colors.yellow,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
