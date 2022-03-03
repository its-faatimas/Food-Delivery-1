import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';

class AddToOrdersAppBar extends StatelessWidget with PreferredSizeWidget {
  const AddToOrdersAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Container(
        height: 34.0,
        decoration:
            MyDecoration.circular(color: AppColors.dark.withOpacity(0.3)),
        child: SvgPicture.asset(AppIcons.close, color: AppColors.white),
      ).onTap(() {
        Navigator.pop(context);
      }),
      expandedHeight: 280.h,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [StretchMode.zoomBackground],
        background: Image.network(
          MockData.ingFood,
          fit: BoxFit.cover,
          height: 280.h,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 280.h);
}
