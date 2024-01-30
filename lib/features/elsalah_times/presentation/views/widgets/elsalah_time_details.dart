import 'package:azkarapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SalahTimeDetails extends StatelessWidget {
  const SalahTimeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 32.h,
width: double.infinity,
    decoration: BoxDecoration(
  color: Theme.of(context).colorScheme.primaryContainer

),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('صلاة الفجر',style: Styles.textStyle14,),
          Text('5.21',style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.secondary
          ),)

        ],
      ),
    );
  }
}
