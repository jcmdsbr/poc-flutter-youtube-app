import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone/app/pages/home_page.dart';
import 'package:youtube_clone/app/pages/inbox_page.dart';
import 'package:youtube_clone/app/pages/library_lage.dart';
import 'package:youtube_clone/app/pages/subscriptions_page.dart';
import 'package:youtube_clone/app/pages/trending_page.dart';
import 'package:youtube_clone/bloc/root_bloc.dart';

class CustomBody extends StatefulWidget {
  @override
  _CustomBodyState createState() => _CustomBodyState();
}

class _CustomBodyState extends State<CustomBody> {
  final pages = [
    HomePage(),
    TrendingPage(),
    SubscriptionsPage(),
    InboxPage(),
    LibraryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<RootBloc>(context);
    return Container(
      padding: EdgeInsets.all(16),
      child: pages[bloc.get()],
    );
  }
}
