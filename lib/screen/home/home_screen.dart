import 'package:coupons_vault/cubit/coupons_category_selection_cubit.dart';
import 'package:coupons_vault/widget/coupon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> categories = [
    "All",
    "Trending",
    "Dining",
    "Sports",
    "Amazon",
    "Transport"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Wrap(
            spacing: 15.0,
            crossAxisAlignment: WrapCrossAlignment.start,
            runSpacing: 12,
            children: categories.map((category) {
              return BlocBuilder<CouponsCategorySelectionCubit,
                  CouponsCategorySelectionState>(
                builder: (context, state) {
                  bool isSelected = state is CouponsCategorySelectionUpdated &&
                      state.selectedCategory == category;

                  return GestureDetector(
                    onTap: () {
                      context
                          .read<CouponsCategorySelectionCubit>()
                          .selectCategory(category);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color:
                            isSelected ? Colors.deepOrange : Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: Colors.deepOrange.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: const Offset(0, 3),
                                ),
                              ]
                            : [],
                      ),
                      child: Text(
                        category,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(
            height: 12,
          ),
          // Expanded(
          //   child: GridView.builder(
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2, // Number of items per row
          //       crossAxisSpacing: 8.0,
          //       mainAxisSpacing: 8.0,
          //       childAspectRatio: 0.7, // Adjust the height/width ratio
          //     ),
          //     itemCount: 6,
          //     itemBuilder: (context, index) {
          //       return const CustomCouponCard(
          //         title: 'Special Discount',
          //         description: 'Get 20% off on your next purchase',
          //         code: 'SAVE20',
          //         expiryDate: 'Expires on 31st Dec 2024',
          //       );
          //     },
          //   ),
          // ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ZigzagCouponWidget(
                    backgroundColor: Color.fromARGB(255, 240, 155, 26),
                    textColor: Colors.white,
                    couponCode: 'SAVE20',
                    discount: '20% OFF',
                    borderRadius: 15.0,
                    height: 120.0,
                    width: 320.0,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
