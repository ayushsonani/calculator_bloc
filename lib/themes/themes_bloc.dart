import 'package:bloc/bloc.dart';
import 'package:calculator_using_bloc/screens/calculator_page.dart';
import 'package:flutter/material.dart';

import 'themes_event.dart';
import 'themes_state.dart';

class ThemesBloc extends Bloc<ThemesEvent, ThemesState> {
  ThemesBloc() : super(ThemesState().init()) {
    on<InitEvent2>((event, emit) {
      final controller = ValueNotifier<bool>(true);
      Calculator_bloc_controllerPage.themebloc
          .add(ThemeSet(theme: controller.value));
    },);

    on<ThemeSet>((event, emit) {
      print("Theme is := ${event.theme}");
      emit(ThemeGet(
          textcolor: event.theme?Colors.black:Colors.white,
          buttoncolor: event.theme?Colors.white:Colors.black,
          backcolor: event.theme?Color(0xFFF1F1F3):Color(0xFF16171C),
          theme: event.theme));
    });

  }

  void _init(InitEvent2 event, Emitter<ThemesState> emit) async {
    emit(state.clone());
  }
}
