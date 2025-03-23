import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tab_event.dart';
part 'tab_state.dart';

class TabBloc extends Bloc<TabEvent, TabState> {
  TabBloc() : super(TabExpensesState()) {
    on<ChangeTabEvent>((event, emit) {
      if (event.index == 0) {
        emit(TabExpensesState());
      } else {
        emit(TabIncomeState());
      }
    });
  }
}
