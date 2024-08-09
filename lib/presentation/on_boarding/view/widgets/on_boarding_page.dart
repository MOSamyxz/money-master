import 'package:flutter/material.dart';
import 'package:money_master/core/constants/theme/styles.dart';
import 'package:money_master/core/utils/space.dart';
import 'package:money_master/presentation/on_boarding/model/on_boarding_model.dart';

class OnBoardingPage extends StatelessWidget {
  final OnBoardingModel onBoardingModel;

  const OnBoardingPage({
    super.key,
    required this.onBoardingModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(onBoardingModel.image, height: 250),
        const VerticalSpace(height: 60),
        Text(
          onBoardingModel.title,
          style: AppStyles.semiBold18White,
        ),
        const VerticalSpace(height: 20),
        Text(
          onBoardingModel.subtitle,
          textAlign: TextAlign.center,
          style: AppStyles.regular16Grey,
        ),
      ],
    );
  }
}
