import 'package:flutter/material.dart';

class TableModel {
  String? _assetIcon;
  String? _title;
  String? _subtitle;
  Widget? _screen;

  TableModel(String assetIcon, String title, String subtitle, Widget screen) {
    _assetIcon = assetIcon;
    _title = title;
    _subtitle = subtitle;
    _screen = screen;
  }

  Widget get screen => _screen!;

  String get subtitle => _subtitle!;

  String get title => _title!;

  String get assetIcon => _assetIcon!;
}
