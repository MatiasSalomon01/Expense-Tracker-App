part of 'tab_bloc.dart';

@immutable
sealed class TabState {}

final class TabExpensesState extends TabState {
  final index = 0;
}

final class TabIncomeState extends TabState {
  final index = 1;
}
