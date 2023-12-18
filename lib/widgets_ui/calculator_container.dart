import 'dart:ui';

import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_bloc.dart';
import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_event.dart';
import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/calculator_page.dart';

class CalculatorContainer extends StatelessWidget {

  Color color=Colors.white;
  Color textcolor = Colors.black;
  String name= "0";
  CalculatorContainer({ required this.color,required this.textcolor, required this.name});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => Calculator_bloc_controllerBloc()..add(InitEvent()),child: Builder(builder: (context) => Buttons(context),),);
  }

  Widget Buttons(BuildContext context){

    return GestureDetector(
      onTap: (){
        Calculator_bloc_controllerPage.bloc.add(NumberInsert(numberstring: name));
      },
      child:  Container(
      width: 72,
      height: 72,
      padding: const EdgeInsets.all(12),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        '${name}',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w400,
          height: 0.04,
        ),
      ),
    )
    );
  }
}
