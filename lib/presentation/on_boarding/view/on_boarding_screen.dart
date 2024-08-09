import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_master/presentation/on_boarding/view/widgets/on_boarding_view.dart';
import 'package:money_master/presentation/on_boarding/view_model/cubit/on_boarding_cubit.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => OnBoardingCubit()..init(),
        child: const OnBoardingView());
  }
}
