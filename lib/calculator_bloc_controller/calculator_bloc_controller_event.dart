abstract class Calculator_bloc_controllerEvent {}

class InitEvent extends Calculator_bloc_controllerEvent {}

class NumberInsert extends Calculator_bloc_controllerEvent{
  String numberstring = "";

  NumberInsert({required this.numberstring});
}


