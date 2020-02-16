import 'package:flutter/material.dart';
import 'package:youtube_clone/app/utils/custom_search_delegate.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        "images/youtube.png",
        width: 90,
        height: 20,
      ),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.grey),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            //showSearch(context: context, delegate: CustomSearchDelegate());
          },
        ),
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {},
        )
      ],
    );
  }
}
