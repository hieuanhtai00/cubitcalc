part of 'calculator_bloc_bloc.dart';

@immutable
abstract class CalculatorBlocEvent {}

class InputNumber extends CalculatorBlocEvent {
  int n = 0;
  InputNumber({required this.n});
}

class InputOperator extends CalculatorBlocEvent {}

class Calculate extends CalculatorBlocEvent {}
