import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:learn_more_more/success/drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:auto_orientation/auto_orientation.dart';

class AssetPlayerWidget extends StatefulWidget {
  @override
  _AssetPlayerWidgetState createState() => _AssetPlayerWidgetState();
}

class _AssetPlayerWidgetState extends State<AssetPlayerWidget> {
  final asset = 'assets/logos/video/phy1.MP4';
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(asset);
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
    chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ฟิสิกส์ ม.4 การเคลื่อนที่'),
      ),
      body: Container(
          color: Colors.green[50],
          child: Center(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                        colors: [Colors.blue.shade100, Colors.blue.shade50])),
                margin: EdgeInsets.all(32),
                padding: EdgeInsets.all(24),
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Chewie(
                          controller: chewieController,
                        ),
                        buildButton1()
                      ],
                    ),
                  ),
                )),
          )),
      drawer: Drawer(child: tapbar()),
    );
  }
}

Container buildButton1() {
  return Container(
      constraints: BoxConstraints.expand(height: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.blue[200]),
      child: FlatButton(
        child: Text("เอกสารประกอบการเรียน",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        textColor: Colors.white,
        color: Colors.transparent,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        onPressed: () => {
          launch(
              'https://drive.google.com/file/d/11hyd_skPtejrZ5V0FcibmsV7w3V2pn-S/view?usp=sharing')
        },
      ),
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(12));
}
