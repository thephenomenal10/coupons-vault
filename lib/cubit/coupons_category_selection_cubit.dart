import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'coupons_category_selection_state.dart';

class CouponsCategorySelectionCubit
    extends Cubit<CouponsCategorySelectionState> {
  CouponsCategorySelectionCubit()
      : super(CouponsCategorySelectionUpdated('All'));

  void selectCategory(String category) {
    emit(CouponsCategorySelectionUpdated(category));
  }
}
