import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_constainer.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/contants/colors.dart';
import 'package:e_commerce/utils/contants/image_strings.dart';
import 'package:e_commerce/utils/contants/sizes.dart';
import 'package:flutter/material.dart';

class THomeScreen extends StatelessWidget {
  const THomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSearchContainer(
                    text: "Seacrh in Store",
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: "Popular Choices",
                          showActionsButton: false,
                          textColor: TColors.white,
                        ),
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: TPromoSlider(
                  banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
