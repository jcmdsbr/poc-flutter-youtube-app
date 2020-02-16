import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone/bloc/root_bloc.dart';

class CustomNavigationBarItem extends StatefulWidget {
  @override
  _CustomNavigationBarItemState createState() =>
      _CustomNavigationBarItemState();
}

class _CustomNavigationBarItemState extends State<CustomNavigationBarItem> {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<RootBloc>(context);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: bloc.get(),
      onTap: (index) {
        bloc.set(index);
      },
      fixedColor: Colors.red,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home", style: TextStyle(fontSize: 10))),
        BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            title: Text("Trending", style: TextStyle(fontSize: 10))),
        BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            title: Text("Subscriptions", style: TextStyle(fontSize: 10))),
        BottomNavigationBarItem(
            icon: Icon(Icons.email),
            title: Text("Inbox", style: TextStyle(fontSize: 10))),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            title: Text("Library", style: TextStyle(fontSize: 10)))
      ],
    );
  }
}
