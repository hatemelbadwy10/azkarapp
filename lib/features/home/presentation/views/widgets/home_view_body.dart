import 'package:azkarapp/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/azkar_list_view_item.dart';
import 'package:flutter/material.dart';

import 'azkar_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CustomAppBar(),
          AzkarListView(),

          //Test()
        ],
      ),
    );
  }
}
