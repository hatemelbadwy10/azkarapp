import 'package:azkarapp/features/elsalah_times/presentation/views/widgets/elsalah_time_details.dart';
import 'package:flutter/material.dart';
class ElsalahTimesListView extends StatelessWidget {
  const ElsalahTimesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemBuilder: (context,index){
    return const SalahTimeDetails();

    });
  }
}
