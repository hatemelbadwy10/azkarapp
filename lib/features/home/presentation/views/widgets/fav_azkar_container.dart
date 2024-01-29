import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
class FavAzkarContainer extends StatelessWidget {
  const FavAzkarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(

      width: 291.w,
      height: 32.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.primaryContainer
      ),
    child:  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
                    'اذكار الصباح'
                    ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined))
          ],
        ),
      ),
    ),


    );
  }
}
