import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  AudioPlayer _player;

  @override
  void initState() {
    super.initState();
    AudioPlayer.setIosCategory(IosCategory.playback);
    _player = AudioPlayer();
    _player
        .setUrl(
            "https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3")
        .catchError((error) {
      // catch audio error ex: 404 url, wrong url ...
      print(error);
    });
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      // appBar: AppBar(
      //   title: Text('Playing Now'),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 40.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Text(
                  'Playing Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15.0),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.pinkAccent,
                        size: 30.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Center(
                    child: Container(
                      height: 250,
                      width: 250,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade100,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.asset(
                          'images/sample.jpeg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: Text(
                      'Pratah Pooja Avasar',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Center(
                    child: Text(
                      'Mahavir Music',
                      style: TextStyle(
                          fontSize: 14.0, color: Colors.grey.shade600),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '0:58',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '3:36',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Slider(
                    min: 0.0,
                    max: 4.00,
                    value: 0.1,
                    onChanged: (value) {},
                    activeColor: Colors.red,
                    inactiveColor: Colors.grey.shade500,
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.repeat,
                          size: 30,
                        ),
                        Icon(
                          Icons.skip_previous,
                          size: 30,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          child: FloatingActionButton(
                            onPressed: () {
                              print('in play || pause');
                              // _assetsAudioPlayer.playOrPause();

                              // assetsAudioPlayer.play();
                            },
                            backgroundColor: Colors.deepPurple,
                            child: Icon(
                              Icons.pause,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.skip_next,
                          size: 30,
                        ),
                        Icon(
                          Icons.shuffle,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
