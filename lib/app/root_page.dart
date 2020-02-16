import 'package:flutter/material.dart';
import 'package:youtube_clone/app/widgets/custom_app_bar.dart';
import 'package:youtube_clone/app/widgets/custom_body.dart';
import 'package:youtube_clone/app/widgets/custom_bottom_navbar_Item.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomBody(),
      bottomNavigationBar: CustomNavigationBarItem(),
    );
  }
}
