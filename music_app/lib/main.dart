import 'package:flutter/material.dart';
import './screens/artist_screen.dart';
import './screens/player_screen.dart';

void main() => runApp(MusicApp());

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        ArtistScreen.routeName: (context) => ArtistScreen(),
        PlayerScreen.routeName: (context) => PlayerScreen(),
      },
      home: PlayerScreen(),
    );
  }
}
