//import 'package:azkarapp/features/data/models/elzekr_model/azkar_model.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, });
//final AzkarModel azkarModel;
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: HomeViewBody(),
    );
  }
}
