import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_bloc.dart';
import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_event.dart';
import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_state.dart';
import 'package:calculator_using_bloc/widgets_ui/calculator_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorButtons extends StatefulWidget {

  Color textcolor = Colors.black;
  Color color = Colors.white;

   CalculatorButtons({required this.textcolor,required this.color});

  @override
  State<CalculatorButtons> createState() => _CalculatorButtonsState();
}

class _CalculatorButtonsState extends State<CalculatorButtons> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Calculator_bloc_controllerBloc()..add(InitEvent()),
      child: Builder(
        builder:(context) {
          final bloc = BlocProvider.of<Calculator_bloc_controllerBloc>(context);

          List button_name = ["C","+/-","%","/","7","8","9","*","4","5","6","-","1","2","3","+",".","0","<=","="];
          print("colors := ${widget.textcolor.toString()}");
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color:   Color(0xFFD2D3DA),
                        name: button_name[0],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: Color(0xFFD2D3DA),
                        name: button_name[1],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: Color(0xFFD2D3DA),
                        name: button_name[2],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: Color(0xFF4B5EFC),
                        name: button_name[3],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: widget.color,
                        name: button_name[4],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: widget.color,
                        name: button_name[5],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: widget.color,
                        name: button_name[6],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color:  Color(0xFF4B5EFC),
                        name: button_name[7],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: widget.color,
                        name: button_name[8],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: widget.color,
                        name: button_name[9],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: widget.color,
                        name: button_name[10],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color:  Color(0xFF4B5EFC),
                        name: button_name[11],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: widget.color,
                        name: button_name[12],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: widget.color,
                        name: button_name[13],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: widget.color,
                        name: button_name[14],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color:  Color(0xFF4B5EFC),
                        name: button_name[15],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: widget.color,
                        name: button_name[16],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: widget.color,
                        name: button_name[17],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color: widget.color,
                        name: button_name[18],
                      ),
                      CalculatorContainer(
                        textcolor: widget.textcolor,
                        color:  Color(0xFF4B5EFC),
                        name: button_name[19],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
