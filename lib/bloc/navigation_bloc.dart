import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const HomePageState(0, "Coupons")) {
    on<SelectPage>((event, emit) {
      switch (event.pageIndex) {
        case 0:
          emit(const HomePageState(0, "Coupons"));
          break;
        case 1:
          emit(const SellCouponPageState(1, "Sell"));
          break;
        case 2:
          emit(const NotificationPageState(2, "Notifications"));
          break;
        case 3:
          emit(const ProfilePageState(3, "Profile"));
          break;
      }
    });
  }
}
