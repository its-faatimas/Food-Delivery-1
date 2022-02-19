import 'package:flutter/material.dart';
import 'package:foodly/core/extensions/size_extension.dart';
extension ImageExtension on Image {
  ClipRRect circular({double radius = 12.0}) => ClipRRect(
      borderRadius: BorderRadius.circular(radius.w),
      child: this);
}
