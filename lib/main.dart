import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone/app/root_page.dart';
import 'package:youtube_clone/bloc/root_bloc.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      home: MultiProvider(
        providers: [ChangeNotifierProvider<RootBloc>.value(value: RootBloc())],
        child: RootPage(),
      ),
    ),
  );
}
