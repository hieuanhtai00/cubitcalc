import 'package:bloc/bloc.dart';

class CalculatorCubit extends Cubit<String> {
  String output = '';
  String input = '', ope = '';
  double a = 0, b = 0, result = 0;
  CalculatorCubit() : super('');

  void inputNumber(int n) {
    output += n.toString();
    input += n.toString();
    emit(output);
  }

  void inputOperator(String operator) {
    ope = operator;
    output += operator;
    a = double.parse(input);
    input = '';
    emit(output);
  }

  void cancel() {
    output = '';
    input = '';
    emit('');
  }

  void calculate() {
    b = double.parse(input);
    if (ope == '+') result = a + b;
    if (ope == '-') result = a - b;
    if (ope == '*') result = a * b;
    if (ope == '/') result = a / b;
    output = result.toString();
    emit(output);
  }
}
