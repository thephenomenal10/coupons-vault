part of 'navigation_bloc.dart';

@immutable
abstract class NavigationEvent {}

class SelectPage extends NavigationEvent {
  final int pageIndex;
  SelectPage(this.pageIndex);
}
