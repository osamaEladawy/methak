import 'package:flutter_screenutil/flutter_screenutil.dart';

extension AppDimensions on int {
  double get height => h;
  double get width => w;
}
extension AppDimensionsDouble on double {
  double get height => h;
  double get width => w;
}
