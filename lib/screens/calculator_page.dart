import 'package:calculator_using_bloc/calculator_bloc_controller/calculator_bloc_controller_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
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
    final controller = ValueNotifier<bool>(true);
    return Scaffold(
      appBar: AppBar(
        actions: [
          AdvancedSwitch(
            controller:controller,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            activeChild: Text('Light',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
            inactiveChild: Text('Night',style: TextStyle(fontWeight: FontWeight.bold,)),
            activeImage: NetworkImage("https://cdn.pixabay.com/photo/2014/05/18/00/33/sun-346710_1280.png"),
            inactiveImage: NetworkImage("https://cdn.pixabay.com/photo/2017/03/23/17/02/night-2168868_1280.png"),
            borderRadius: const BorderRadius.all(Radius.circular(1000)),
            width: 100.0,
            height: 45.0,
            enabled: true,
            disabledOpacity: 0.5,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Flexible(
              flex: 3,
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
              flex: 7,
              child: Container(
                color: Colors.red,
                child: CalculatorButtons(),
              )),
        ],
      ),
    );
  }
}
