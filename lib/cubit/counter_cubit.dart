import 'package:basket_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(super.initialState);

  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamIncreament({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncreamentState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncreamentState());
    }
  }
}
