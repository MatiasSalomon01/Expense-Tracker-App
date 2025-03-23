part of 'tab_bloc.dart';

@immutable
sealed class TabEvent {}

final class ChangeTabEvent extends TabEvent {
  final int index;

  ChangeTabEvent({required this.index});
}
