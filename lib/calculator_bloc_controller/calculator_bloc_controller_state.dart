import 'dart:ui';

import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_event.dart';
import 'package:flutter/material.dart';

class Calculator_bloc_controllerState {
  Calculator_bloc_controllerState init() {
    return Calculator_bloc_controllerState();
  }

  Calculator_bloc_controllerState clone() {
    return Calculator_bloc_controllerState();
  }
}

class TotalNumber extends Calculator_bloc_controllerState{
  String answer = "0";
  TotalNumber({required this.answer});
}

class ThemeGet  extends Calculator_bloc_controllerState{
  bool theme = true;
  Color buttoncolor = Colors.white;
  Color textcolor = Colors.black;
  Color backcolor = Colors.white;
  ThemeGet({required this.theme,required this.textcolor,required this.buttoncolor,required this.backcolor});
}



