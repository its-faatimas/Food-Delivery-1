import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/screens/payment/app_credit_card_page.dart';
import 'package:foodly/widgets/buttons/my_outlined_button.dart';

class PaymentMethodsPage extends StatelessWidget {
  const PaymentMethodsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: LocaleKeys.payment_methods.tr()),
      body: Padding(
        padding: MyEdgeInsets.symmetric(h: 44.0, v: 100.0),
        child: MethodInfo(
          illustration: AppIllustrations.creditCard,
          title: LocaleKeys.payment_methods,
          subtitle: LocaleKeys.enter_email_to_reset,
          widget: MyOutlinedButton(
            onPressed: () {
              CustomNavigator().push(AddingCreditCardPage());
            },
            label: LocaleKeys.add_your_credit.tr(),
          ),
        ),
      ),
    );
  }
}
