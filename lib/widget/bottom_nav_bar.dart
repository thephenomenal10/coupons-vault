import 'package:coupons_vault/bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
            elevation: 0,
            onTap: (value) =>
                BlocProvider.of<NavigationBloc>(context).add(SelectPage(value)),
            selectedItemColor: Colors.deepOrange,
            unselectedItemColor: Colors.grey,
            currentIndex: state.currentIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.currency_rupee_outlined), label: 'Sell'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: 'Notifications'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ]);
      },
    );
  }
}
