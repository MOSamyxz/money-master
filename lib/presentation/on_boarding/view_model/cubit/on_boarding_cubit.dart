import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  int currentIndex = 0;
  late PageController controller;

  void init() {
    controller = PageController();
    emit(OnBoardingInitial());
  }

  void nextPage() {
    if (currentIndex < 2) {
      currentIndex++;
      emit(OnBoardingPageChanged(currentIndex));
    } else {
      emit(OnBoardingComplete());
    }
  }

  void scrollPage(int index) {
    currentIndex = index;
    emit(OnBoardingPageChanged(currentIndex));
  }

  void skip() {
    emit(OnBoardingComplete());
  }
}
