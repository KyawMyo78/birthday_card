import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  final assetsAudioPlayer = AssetsAudioPlayer();

  String displayText = "\n\n\n\n";
  int btnCount = 0;
  int color = 0xffb66ced;
  String showImg = "images/img1.jpeg";
  String img1 = "images/img1.jpeg";
  String img2 = "images/img2.png";
  String img3 = "images/img3.png";
  String img4 = "images/img4.png";
  String img5 = "images/img5.png";
  String img6 = "images/img6.jpg";
  String img7 = "images/img7.jpg";
  String img8 = "images/img8.jpg";
  String img9 = "images/img9.png";

  Widget _displayText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    assetsAudioPlayer.open(
      Playlist(audios: [
        Audio.file("assets/audios/bts.mp3"),
      ]),
      loopMode: LoopMode.playlist,
    );
    assetsAudioPlayer.play();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        String pretext = "";
        btnCount += 1;
        if (btnCount == 0) {
          showImg = img1;
        } else if (btnCount == 1) {
          pretext =
              "Happy 18th birthday dear Elle :) \nA new chapter of life for you begins today.\nSay good bye to your past and.\nkeep going forward to the future.\n(Like an arrow in the blue sky <3)\nWhishing you a happy birthday! May all your dreams come true.\nI made this website as a present for you\nThis doesn't have much value but I put alot of effort to this.\nHope you enjoy my creation :)\n\nTip: touch to continue but slowly";
          showImg = img2;
        } else if (btnCount == 2) {
          showImg = img3;
        } else if (btnCount == 3) {
          showImg = img4;
        } else if (btnCount == 4) {
          showImg = img5;
        } else if (btnCount == 5) {
          showImg = img6;
        } else if (btnCount == 6) {
          showImg = img7;
        } else if (btnCount == 7) {
          showImg = img8;
        } else if (btnCount == 8) {
          showImg = img9;
        } else {
          btnCount = 0;
          showImg = img1;
        }
        setState(() {
          displayText = pretext;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.purpleAccent.withOpacity(0.4), BlendMode.dstATop),
            image: AssetImage("$showImg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 270)),
              Padding(
                padding: EdgeInsets.only(left: 500),
              ),
              _displayText(displayText),
              SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
