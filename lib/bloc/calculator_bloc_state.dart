part of 'calculator_bloc_bloc.dart';

@immutable
class CalculatorBlocState {
  String output = '';
  CalculatorBlocState({required this.output});
}

class CalculatorBlocInitial extends CalculatorBlocState {
  CalculatorBlocInitial() : super(output: '');
}
