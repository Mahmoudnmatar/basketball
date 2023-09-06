import 'package:basketball/cubit/counter_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(counterAIncrementState());
  int PointA = 0;

  int PointB = 0;

  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      PointA += buttonNumber;
      emit(counterAIncrementState());
    } else {
      PointB += buttonNumber;
      emit(counterBIncrementState());
    }
  }
}
