part of 'coupons_category_selection_cubit.dart';

@immutable
abstract class CouponsCategorySelectionState {}

class CouponsCategorySelectionInitial extends CouponsCategorySelectionState {}

class CouponsCategorySelectionUpdated extends CouponsCategorySelectionState {
  final String selectedCategory;

  CouponsCategorySelectionUpdated(this.selectedCategory);
}
