import 'package:bloc/bloc.dart';
import 'package:math_expressions/math_expressions.dart';

import '../screens/calculator_page.dart';
import 'calculator_bloc_controller_event.dart';
import 'calculator_bloc_controller_state.dart';

class Calculator_bloc_controllerBloc extends Bloc<Calculator_bloc_controllerEvent, Calculator_bloc_controllerState> {
  Calculator_bloc_controllerBloc() : super(Calculator_bloc_controllerState().init()) {
    on<InitEvent>(_init);
    on<NumberInsert>((event, emit) {

      if(event.numberstring=="="){
        Parser p = Parser();
        print("allnumbner := ${Calculator_bloc_controllerPage.userinsert}");
        Expression exp = p.parse(Calculator_bloc_controllerPage.userinsert);
        ContextModel ctx = ContextModel();
        double eval = exp.evaluate(EvaluationType.REAL, ctx);

        print("evnl := ${eval}");
        emit(TotalNumber(answer: eval.toString()));
        Calculator_bloc_controllerPage.userinsert = "";
      }
      else if(event.numberstring=="AC"){
        Calculator_bloc_controllerPage.userinsert="";
      }
      else if(event.numberstring=="<="){
        Calculator_bloc_controllerPage.userinsert = Calculator_bloc_controllerPage.userinsert.substring(0,Calculator_bloc_controllerPage.userinsert.length-1);
      }
      else{
        Calculator_bloc_controllerPage.userinsert =Calculator_bloc_controllerPage.userinsert + event.numberstring  ;
        print("Numbner := ${Calculator_bloc_controllerPage.userinsert}");
        emit(TotalNumber(answer: Calculator_bloc_controllerPage.userinsert));
      }

    });

  }





  void _init(InitEvent event, Emitter<Calculator_bloc_controllerState> emit) async {
    emit(state.clone());
  }

}
