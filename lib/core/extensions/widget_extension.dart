import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

extension PaddingExtension on Widget {

  // Vidjetlarga simmetrik padding berish uchun
  Padding sp({double h = 20, double v = 20.0}) => Padding(
        padding: MyEdgeInsets.symmetric(h: h, v: v),
        child: this,
      );

  Transform translate({double x = 0.0, double y = 0.0}) =>
      Transform.translate(offset: Offset(x, y), child: this);

  SliverToBoxAdapter toSliver() => SliverToBoxAdapter(child: this);

  InkWell onTap(VoidCallback onTap) => InkWell(
    child: this,
    onTap: onTap,
  );
}
