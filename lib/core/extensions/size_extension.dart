
import 'package:foodly/core/components/exporting_packages.dart';

extension SizeExtension on num {
  get w => getWidth(this * 1.0);
  get h => getHeight(this * 1.0);
}