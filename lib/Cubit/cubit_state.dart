part of 'cubit_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class PlusState extends CounterState{}

class MinusState extends CounterState{}
