import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_bloc_event.dart';
part 'calculator_bloc_state.dart';

class CalculatorBlocBloc
    extends Bloc<CalculatorBlocEvent, CalculatorBlocState> {
  String input = '';
  double a = 0, b = 0, result = 0;
  String ope = '';
  CalculatorBlocBloc() : super(CalculatorBlocInitial()) {
    on<CalculatorBlocEvent>((event, emit) {});
  }
}
