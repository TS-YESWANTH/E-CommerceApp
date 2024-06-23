import "package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart";
import "package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart";
import "package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_next_page.dart";
import "package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart";
import "package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart";
import "package:e_commerce/utils/contants/colors.dart";
import "package:e_commerce/utils/contants/image_strings.dart";
import "package:e_commerce/utils/contants/sizes.dart";
import "package:e_commerce/utils/contants/text_strings.dart";
import "package:e_commerce/utils/device/device_utility.dart";
import "package:e_commerce/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import 'package:iconsax/iconsax.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),
          const OnBoardingSkip(),
          OnBoardingDotNavigation(
            pageController: _pageController,
          ),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}



