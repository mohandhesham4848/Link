import 'package:basketball_app/cubit/states/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounteCubit extends Cubit<CounterState> {
  CounteCubit() : super(TeamInitailState());
  int teamAPoints = 0;
  int teamBPoints = 0;
  void addingvalueToA(int number) {
    teamAPoints += number;

    emit(TeamACounterState());
  }

  void addingvalueToB(int number) {
    teamBPoints += number;

    emit(TeamBCounterState());
  }

  void restValue() {
    teamBPoints = 0;
    teamAPoints = 0;
     emit(TeamRestState());
  }
}
