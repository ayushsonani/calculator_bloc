import 'package:flutter/material.dart';

class ThemesState {
  ThemesState init() {
    return ThemesState();
  }

  ThemesState clone() {
    return ThemesState();
  }
}


class ThemeGet  extends ThemesState{
  bool theme = true;
  Color buttoncolor;
  Color textcolor;
  Color backcolor;
  Color etxButton;
  ThemeGet({required this.theme,required this.textcolor,required this.buttoncolor,required this.backcolor,required this.etxButton});
}