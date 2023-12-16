import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_bloc.dart';
import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_event.dart';
import 'package:calculator_using_bloc/widgets_ui/calculator_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorButtons extends StatelessWidget {
  const CalculatorButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Calculator_bloc_controllerBloc()..add(InitEvent()),
      child: Builder(
        builder:(context) {
          final bloc = BlocProvider.of<Calculator_bloc_controllerBloc>(context);

          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "AC",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "%",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "<=",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "/",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "7",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "8",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "9",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "*",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "4",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "5",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "6",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "-",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "1",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "2",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "3",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "+",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "00",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "0",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: ".",
                    ),
                    CalculatorContainer(
                      color: Colors.blue,
                      name: "=",
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
