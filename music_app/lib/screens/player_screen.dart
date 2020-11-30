import 'package:flutter/material.dart';
import '../widgets/playerControls.dart';
import '../widgets/playerSlider.dart';

class PlayerScreen extends StatelessWidget {
  static final routeName = '/player';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Color(0xff141414)),
          Container(
            width: MediaQuery.of(context).size.width / 1.25,
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color(0xffCCFD96), const Color(0xffE8F06B)],
              ),
            ),
          ),
          Container(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.all(0),
                          alignment: Alignment.centerLeft,
                        ),
                        Text(
                          'Playing Now'.toUpperCase(),
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.queue_music,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.all(0),
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          'https://cdn.stocksnap.io/img-thumbs/960w/architecture-building_MBZ6IN5X8Y.jpg',
                          height: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 0,
                            blurRadius: 15,
                            offset: Offset(5, 16),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Last Dance',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Rhye',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.yellow,
                            ),
                            padding: EdgeInsets.all(0),
                            alignment: Alignment.topRight,
                            onPressed: () {}),
                      ],
                    ),
                    PlayerSlider(),
                    PlayerControls(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
