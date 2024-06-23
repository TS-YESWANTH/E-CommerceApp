import "package:flutter/material.dart";
import "package:get/get.dart";

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage(index) {
    if (currentPageIndex.value == 2) {
      //Get.to(LoginScreen())
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage(index) {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
