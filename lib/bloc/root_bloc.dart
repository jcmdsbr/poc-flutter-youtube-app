import 'package:flutter/widgets.dart';

class RootBloc extends ChangeNotifier {
  int index = 0;

  get() => index;

  set(int index) {
    this.index = index;
    notifyListeners();
  }
}
