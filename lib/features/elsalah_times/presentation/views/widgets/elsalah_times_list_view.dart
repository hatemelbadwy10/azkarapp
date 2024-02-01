import 'package:azkarapp/core/utils/api_services.dart';
import 'package:azkarapp/features/elsalah_times/presentation/manger/elsalah_times_cubit/elsalah_times_cubit.dart';
import 'package:azkarapp/features/elsalah_times/presentation/manger/elsalah_times_cubit/elsalah_times_cubit.dart';
import 'package:azkarapp/features/elsalah_times/presentation/views/widgets/elsalah_time_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElsalahTimesListView extends StatelessWidget {
  const ElsalahTimesListView({super.key});
  //ApiServices? apiServices;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ElsalahTimesCubit, ElsalahTimesState>(
      builder: (context, state) {
        if (state is ElsalahTimesSuccess) {
          return Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return const SalahTimeDetails();
            }),
          );
        } else if (state is ElsalahTimesFailure) {
          print(state.errMassage);
          return Text(state.errMassage);
        } else {
          //print(apiServices?.getElsalahTimes());
          return CircularProgressIndicator();

          //  print( context.read<ElsalahTimesCubit>().)
        }
      },
    );
  }
}
