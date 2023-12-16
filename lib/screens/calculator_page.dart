import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../calculator_bloc_controller/calculator_bloc_controller_bloc.dart';
import '../calculator_bloc_controller/calculator_bloc_controller_event.dart';
import '../widgets_ui/calculator_buttons.dart';

class Calculator_bloc_controllerPage extends StatelessWidget {
   static var bloc;
   static String userinsert ="";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          Calculator_bloc_controllerBloc()..add(InitEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    Calculator_bloc_controllerPage.bloc = BlocProvider.of<Calculator_bloc_controllerBloc>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.amber,
                alignment: Alignment.bottomRight,
                child: BlocBuilder<Calculator_bloc_controllerBloc, Calculator_bloc_controllerState>(
                  builder: (context, state) {
                    print("state is := $state");
                    if (state is TotalNumber) {
                      return Text("${state.answer}");
                    }
                    return Text("");
                  },
                ),
              )),
          Expanded(
              flex: 6,
              child: Container(
                color: Colors.red,
                child: CalculatorButtons(),
              )),
        ],
      ),
    );
  }
}
