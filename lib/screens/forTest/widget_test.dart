import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class WidgetTestPage extends StatefulWidget {
  const WidgetTestPage({Key? key}) : super(key: key);

  @override
  _WidgetTestPageState createState() => _WidgetTestPageState();
}

class _WidgetTestPageState extends State<WidgetTestPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: MyEdgeInsets.symmetric(h: 16.0),
          child: MyTextFormField(
            hint: '',
            controller: TextEditingController(),
          ),
        ),
      ),
    );
  }
}
