import 'package:flutter/material.dart';
import 'package:foodly/core/components/exporting_packages.dart';
import 'package:foodly/widgets/app_bars/filter_page_app_bar.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FilterPageAppBar(tabController: _tabController),
      backgroundColor: Colors.transparent,
      body: Container(
        height: 360.h,
        color: AppColors.white,
        child: Column(
          children: [
            Expanded(
              child: TabBarView(controller: _tabController, children: const [
                Center(child: Text('Type')),
                Center(child: Text('Sort by')),
                Center(child: Text('Price')),
                Center(child: Text('Dietary')),
              ]),
            ),
            Divider(height: 1.h, thickness: 1.h),
            _buildCompleteButton(),
          ],
        ),
      ),
    );
  }

  InkWell _buildCompleteButton() => InkWell(
    onTap: (){},
    child: Container(
          width: 375.w,
          alignment: Alignment.center,
          padding: MyEdgeInsets.symmetric(v: 15.0),
          child:  Text(
            'COMPLETE',
            style: MyTextStyle.semiBold(),
          ),
        ),
  );
}
