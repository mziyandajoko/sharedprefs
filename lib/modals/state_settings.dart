import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:shared_prefs217006168/widgets/right_image_profile.dart';

ThemeData round = ThemeData(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    primarySwatch: Colors.blue,
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                  );

ThemeData squred = ThemeData(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    primarySwatch: Colors.blue,
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                  );
class ThemeNotifier extends ChangeNotifier {
  late SharedPreferences? _preference;
  late bool _darkTheme = false;
  late bool _isloading = false;
  late bool _isvisible = false;
  bool get isloading => _isloading;
  bool get isvisible => _isvisible;

  Themesettings() {
    _loadsettingOnPrefs();
  }

  set isloading(bool value) {
    _isloading = value;
    notifyListeners();
  }

  set isVisible(bool value) {
    _isvisible != _isvisible;
    notifyListeners();
  }

  bool get darkTheme => _darkTheme;

  // changetheme() {
  //   _darkTheme = true;
  //   _loadFromPrefs();
  // }

  _initializePrefs() async {
    if (_preference == null) {
      _preference = await SharedPreferences.getInstance();
      notifyListeners();
    }
  }

  _loadsettingOnPrefs() async {
    await _initializePrefs();
    _darkTheme = _preference?.getBool('darkTheme') ?? false;
    _isvisible = _preference?.getBool('isVisible') ?? false;
    notifyListeners();
  }

  _saveSettingOnPrefs() async {
    await _initializePrefs();
    _preference?.setBool('darkTheme', _darkTheme);
    _preference?.setBool('isVisible', _isvisible);
  }

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    _saveSettingOnPrefs();
    notifyListeners();
    _isvisible = !_isvisible;
  }

  void toggleView() {
    _saveSettingOnPrefs();
    notifyListeners();
  }

  // changeView() async{
  //       await _initializePrefs();
  //       rightImageProfile =

  // }
}
