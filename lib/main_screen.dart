import 'package:coupons_vault/bloc/navigation_bloc.dart';
import 'package:coupons_vault/screen/Profile/profile_screen.dart';
import 'package:coupons_vault/screen/home/home_screen.dart';
import 'package:coupons_vault/screen/notification/notification_screen.dart';
import 'package:coupons_vault/screen/sellCoupon/sell_coupon_screen.dart';
import 'package:coupons_vault/widget/bottom_nav_bar.dart';
import 'package:coupons_vault/widget/side_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepOrange,
              title: Text(
                state.screenName,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            body: state is HomePageState
                ? HomeScreen()
                : state is ProfilePageState
                    ? const ProfileScreen()
                    : state is NotificationPageState
                        ? const NotificationScreen()
                        : state is SellCouponPageState
                            ? const SellCouponScreen()
                            : Container(),
            bottomNavigationBar: const BottomNavBar(),
            drawer: const SideNavBar(),
          ),
        );
      },
    );
  }
}
