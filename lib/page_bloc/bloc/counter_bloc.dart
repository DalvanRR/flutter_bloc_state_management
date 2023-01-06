import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterStateInitial()) {
    on<CounterIncrement>(_increment);
    on<CounterDecrement>(_decrement);
  }

// passada a ação (CounterIncrement e o Emmiter que vai ser a classe q vai att o estado)
  void _increment(CounterIncrement event, Emitter<CounterState> emit) {
    emit(CounterStateData(state.counter + 1));
  }

  void _decrement(CounterDecrement event, Emitter<CounterState> emit) {
    emit(CounterStateData(state.counter - 1));
  }
}

//Recebo o evento e emito a att do estado que era CounterStateInitial 
//vai ser um CounterStateData com o counter atualizado