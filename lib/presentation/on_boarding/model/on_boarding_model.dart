import 'package:money_master/core/constants/assets/images.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subtitle;
  OnBoardingModel(
      {required this.image, required this.title, required this.subtitle});
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      image: AppImages.onBoardingOne,
      title: 'Note Down Expenses',
      subtitle: 'Daily note your expenses to\nhelp manage money'),
  OnBoardingModel(
      image: AppImages.onBoardingTwo,
      title: 'Simple Money Management',
      subtitle:
          'Get your notifications or alert\nwhen you do the over expenses'),
  OnBoardingModel(
      image: AppImages.onBoardingThree,
      title: 'Easy to Track and Analize',
      subtitle: 'Tracking your expense help make sure\nyou don\'t overspend'),
];
