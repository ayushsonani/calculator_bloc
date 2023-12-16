import 'dart:ui';

import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_bloc.dart';
import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/calculator_page.dart';

class CalculatorContainer extends StatelessWidget {

  Color color=Colors.blue;
  String name= "0";
  CalculatorContainer({ required this.color, required this.name});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => Calculator_bloc_controllerBloc()..add(InitEvent()),child: Builder(builder: (context) => Buttons(context),),);
  }

  Widget Buttons(BuildContext context){

    return GestureDetector(
      onTap: (){
        Calculator_bloc_controllerPage.bloc.add(NumberInsert(numberstring: name));
      },
      child: Container(
        height: 70,
        width: 70,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: this.color,
        ),
        alignment: Alignment.center,
        child: Text("${this.name}"),
      ),
    );
  }
}
