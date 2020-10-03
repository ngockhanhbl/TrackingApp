import 'package:flutter/material.dart';
import 'package:my_app/screens/nav_app.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = true;
    if(user == null){
      return Text('NULL TEST');
    }else {
      return NavApp();
    }
  }
}