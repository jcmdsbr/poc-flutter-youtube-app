import 'package:flutter/material.dart';
import 'package:youtube_clone/models/video_item.dart';
import 'package:youtube_clone/repositories/youtube_repository.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final repository = YoutubeRepository();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<VideoItem>>(
      future: repository.find(),
      builder: (context, snap) {
        switch (snap.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());
          default:
            if (snap.hasData) {
              return ListView.separated(
                  itemBuilder: (context, index) {
                    var _video = snap.data[index];
                    return Column(
                      children: <Widget>[
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(_video.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(_video.title),
                          subtitle: Text(_video.description),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 3,
                      color: Colors.red,
                    );
                  },
                  itemCount: snap.data.length);
            } else {
              return Center(child: Text("Nenhum vídeo encontrado"));
            }
        }
      },
    );
  }
}
