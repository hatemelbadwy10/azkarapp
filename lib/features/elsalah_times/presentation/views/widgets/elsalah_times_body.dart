import 'package:azkarapp/features/elsalah_times/presentation/views/widgets/elsalah_times_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ElsalahTimesBody extends StatelessWidget {
  const ElsalahTimesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
const ElsalahTimesAppBar(),
        const ElsalahTimesAppBar(),
        SizedBox(height: 32.h,),

      ],
    );
  }
}
