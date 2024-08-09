import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_master/core/constants/assets/images.dart';
import 'package:money_master/core/constants/theme/colors.dart';
import 'package:money_master/core/constants/theme/size.dart';
import 'package:money_master/core/constants/theme/styles.dart';
import 'package:money_master/core/routes/routes.dart';
import 'package:money_master/core/utils/space.dart';
import 'package:money_master/core/widgets/my_custom_button.dart';
import 'package:money_master/presentation/on_boarding/model/on_boarding_model.dart';
import 'package:money_master/presentation/on_boarding/view/widgets/bottom_indicator.dart';
import 'package:money_master/presentation/on_boarding/view/widgets/on_boarding_page.dart';
import 'package:money_master/presentation/on_boarding/view_model/cubit/on_boarding_cubit.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String buttonText = 'Next';
    return Scaffold(
      body: BlocListener<OnBoardingCubit, OnBoardingState>(
        listener: (context, state) {
          if (state is OnBoardingPageChanged) {
            context.read<OnBoardingCubit>().controller.animateToPage(
                state.index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut);
            buttonText = state.index == 2 ? 'Get Started' : 'Next';
          }
          if (state is OnBoardingComplete) {
            Navigator.pushNamedAndRemoveUntil(
                context, Routes.signIn, (route) => false);
          }
        },
        child: SafeArea(
          child: Padding(
            padding: AppSize.defaultPadding,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          context.read<OnBoardingCubit>().skip();
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(color: AppColors.white),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.logo,
                      width: 35,
                      height: 35,
                    ),
                    const HorizontalSpace(
                      width: 5,
                    ),
                    Text(
                      'money\nmaster',
                      style: AppStyles.bold24White,
                    )
                  ],
                ),
                const VerticalSpace(height: 60),
                Expanded(
                  child: PageView(
                    controller: context.read<OnBoardingCubit>().controller,
                    onPageChanged: (value) {
                      context.read<OnBoardingCubit>().scrollPage(value);
                    },
                    children: List.generate(
                        onBoardingList.length,
                        (index) => OnBoardingPage(
                              onBoardingModel: onBoardingList[index],
                            )),
                  ),
                ),
                const BottomIndicator(),
                const VerticalSpace(height: 20),
                BlocBuilder<OnBoardingCubit, OnBoardingState>(
                  builder: (context, state) {
                    return CustomButton(
                      gradient: AppColors.mainGradient,
                      onPressed: () {
                        context.read<OnBoardingCubit>().nextPage();
                      },
                      buttonText: buttonText,
                    );
                  },
                ),
                const VerticalSpace(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
