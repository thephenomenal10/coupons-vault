import 'package:coupons_vault/bloc/navigation_bloc.dart';
import 'package:coupons_vault/cubit/coupons_category_selection_cubit.dart';
import 'package:coupons_vault/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationBloc>(create: (_) => NavigationBloc()),
        BlocProvider<CouponsCategorySelectionCubit>(
          create: (context) => CouponsCategorySelectionCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Coupons Vault',
        theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            textTheme: GoogleFonts.latoTextTheme(
              Theme.of(context).textTheme,
            ),
            colorScheme: const ColorScheme.light(
              surface: Colors.white70,
              primary: Colors.deepOrange,
            )),
        home: const MainScreen(),
      ),
    );
  }
}
