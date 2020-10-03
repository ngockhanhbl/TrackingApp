import 'package:my_app/models/font_size.dart';
import 'package:rxdart/subjects.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class PreferenceBloc {
  final _fontSize = BehaviorSubject<FontSizeModel>();
  final _sizes = [
    FontSizeModel(0.0, 12.0, "12"),
    FontSizeModel(1.0, 13.0, "13"),
    FontSizeModel(2.0, 14.0, "14"),
    FontSizeModel(3.0, 15.0, "15"),
    FontSizeModel(4.0, 16.0, "16"),
    FontSizeModel(5.0, 17.0, "17"),
    FontSizeModel(6.0, 18.0, "18"),
  ];

  final _brightness = BehaviorSubject<Brightness>();


  //Getters
  Stream<FontSizeModel> get fontSize => _fontSize.stream;
  Stream<Brightness> get brightness => _brightness.stream;


  //Setters
  Function(FontSizeModel) get changeFontSize => _fontSize.sink.add;
  Function(Brightness) get changeBrightness => _brightness.sink.add;


  indexToFontSize(double index){
    return _sizes.firstWhere((element) => element.index == index);
  }

  savePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_brightness.value == Brightness.light){
      await prefs.setBool('dark', false);
    }  else {
      await prefs.setBool('dark', true);
    }
    
    await prefs.setDouble('fontSize', _fontSize.value.index);
  }

  loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool darkMode = prefs.get('dark');
    double fontSize = prefs.get('fontSize');

    if (darkMode != null){
      (darkMode == false) ? changeBrightness(Brightness.light) : changeBrightness(Brightness.dark);
    } else {
      changeBrightness(Brightness.light);
    }

    if (fontSize != null){
      changeFontSize(indexToFontSize(fontSize));
    } else {
      changeFontSize(FontSizeModel(2.0, 14.0, "14"));
    }
  }

  dispose(){
    _fontSize.close();
    _brightness.close();
  }

}