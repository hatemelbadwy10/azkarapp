import 'package:azkarapp/features/home/presentation/manger/fav_cubit/fav_cubit.dart';
import 'package:azkarapp/features/home/presentation/views/widgets/fav_azkar_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavAzkarView extends StatelessWidget {
  const FavAzkarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => FavCubit()..fetchAllNotes(),
        child: const FavAzkarBody(),
      ),
    );
  }
}
