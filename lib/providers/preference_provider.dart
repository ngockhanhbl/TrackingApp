import 'package:flutter/material.dart';
import 'package:my_app/blocs/preference_bloc.dart';

class PreferenceProvider with ChangeNotifier{

  PreferenceBloc _bloc;

  PreferenceProvider(){
    _bloc = PreferenceBloc();
    _bloc.loadPreferences();
  }

  PreferenceBloc get bloc => _bloc;
  
}