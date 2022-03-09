import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ImageExtension on Image {
  ClipRRect circular({double radius = 12.0}) =>
      ClipRRect(borderRadius: BorderRadius.circular(radius.w), child: this);
}
