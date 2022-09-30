import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubit_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int counter = 0;

  void plus(){
    counter++;
    emit(PlusState());
  }
  void minus(){
    counter--;
    emit(MinusState());
  }
}
