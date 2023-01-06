part of 'counter_bloc.dart';

abstract class CounterState {
  final int counter;
  const CounterState(this.counter);
}

//Estado inicial da tela
class CounterStateInitial extends CounterState {
  CounterStateInitial() : super(0);
}

class CounterStateData extends CounterState {
  CounterStateData(int counter) : super(counter);
}
