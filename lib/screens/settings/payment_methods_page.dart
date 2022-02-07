import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
class PaymentMethodsPage extends StatelessWidget {
  const PaymentMethodsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: LocaleKeys.payment_methods.tr()),
    );
  }
}
