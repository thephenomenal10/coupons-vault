import 'package:coupons_vault/bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              BlocProvider.of<NavigationBloc>(context).add(SelectPage(0));
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              BlocProvider.of<NavigationBloc>(context).add(SelectPage(1));
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
