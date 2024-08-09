import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_master/core/constants/theme/colors.dart';
import 'package:money_master/presentation/on_boarding/view_model/cubit/on_boarding_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BottomIndicator extends StatelessWidget {
  const BottomIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //? The indicatior widget
              SmoothPageIndicator(
                controller:
                    BlocProvider.of<OnBoardingCubit>(context).controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                  activeDotColor: AppColors.primaryDark,
                  dotColor: AppColors.white,
                  dotHeight: 10.0,
                  dotWidth: 10.0,
                  spacing: 5.0,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
