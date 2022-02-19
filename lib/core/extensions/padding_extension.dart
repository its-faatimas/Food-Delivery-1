import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

extension PaddingExtension on Widget {
  sp({double h = 20, double v = 20.0}) => Padding(
        padding: MyEdgeInsets.symmetric(h: h, v: v),
        child: this,
      );
}
