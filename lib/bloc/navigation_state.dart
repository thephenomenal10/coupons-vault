part of 'navigation_bloc.dart';

@immutable
abstract class NavigationState {
  final int currentIndex;
  final String screenName;
  const NavigationState(this.currentIndex, this.screenName);
}

class HomePageState extends NavigationState {
  const HomePageState(super.currentIndex, super.screenName);
}

class NotificationPageState extends NavigationState {
  const NotificationPageState(super.currentIndex, super.screenName);
}

class ProfilePageState extends NavigationState {
  const ProfilePageState(super.currentIndex, super.screenName);
}

class SellCouponPageState extends NavigationState {
  const SellCouponPageState(super.currentIndex, super.screenName);
}
