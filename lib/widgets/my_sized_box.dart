import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class MySizedBox extends StatelessWidget {
  double? height;
  double? width;
  Widget? child;

  MySizedBox({
    Key? key,
    this.child,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: child,
      height: height != null ? height!.h : null,
      width: width != null ? width!.w : null,
    );
  }
}
