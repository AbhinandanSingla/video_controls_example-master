import 'package:flutter/material.dart';
import 'package:video_controls_example/widget/fittness_video_player/video_player_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: MyHomePage(),
      );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
              color: Colors.white),
          title: Text('Video Directory'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              VideoPlayerWidget(
                url:
                    'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
                timestamps: <Duration>[
                  Duration(minutes: 0, seconds: 14),
                ],
              ),
            ],
          ),
        ),
      );
}
