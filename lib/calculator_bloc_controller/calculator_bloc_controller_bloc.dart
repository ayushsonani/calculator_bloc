import 'package:bloc/bloc.dart';
import 'package:math_expressions/math_expressions.dart';

import '../screens/calculator_page.dart';
import 'calculator_bloc_controller_event.dart';
import 'calculator_bloc_controller_state.dart';

class Calculator_bloc_controllerBloc extends Bloc<Calculator_bloc_controllerEvent, Calculator_bloc_controllerState> {
  Calculator_bloc_controllerBloc() : super(Calculator_bloc_controllerState().init()) {
    on<InitEvent>(_init);
    on<NumberInsert>((event, emit) {
      String temp = Calculator_bloc_controllerPage.userinsert;


      if(event.numberstring=="="){
        Parser p = Parser();
        print("allnumbner := ${temp}");
        Expression exp = p.parse(temp);
        ContextModel ctx = ContextModel();
        double eval = exp.evaluate(EvaluationType.REAL, ctx);

        print("evnl := ${eval}");
        emit(TotalNumber(answer: eval.toString()));
        Calculator_bloc_controllerPage.userinsert = "";
        temp = "";
      }
      else if(event.numberstring=="AC"){
        Calculator_bloc_controllerPage.userinsert = "";
        emit(TotalNumber(answer: Calculator_bloc_controllerPage.userinsert));
      }
      else if(event.numberstring=="<="){
        temp = temp.substring(0,temp.length-1);
        Calculator_bloc_controllerPage.userinsert = Calculator_bloc_controllerPage.userinsert.substring(0,Calculator_bloc_controllerPage.userinsert.length-1);
        emit(TotalNumber(answer: Calculator_bloc_controllerPage.userinsert));
      }
      else{
        temp = temp + event.numberstring;
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
