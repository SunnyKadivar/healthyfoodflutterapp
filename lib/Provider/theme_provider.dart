import 'package:flutter/foundation.dart';

class ThemeProvider with ChangeNotifier{
  
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    notifyListeners();
  }

}