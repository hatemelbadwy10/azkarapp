import 'package:azkarapp/features/home/presentation/views/widgets/elzekr_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AzkarDetailsListView extends StatelessWidget {
  const AzkarDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return

      SizedBox(
        width:  double.infinity,
        height: 500.h,
        child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const ElzekrDetails();
            }),
      );
    //   Expanded(
    //   child: ,
    // );

  }
}
