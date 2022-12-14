import 'package:flutter/material.dart';

import '../../../Model/banner_product.dart';
import '../../../Model/product.dart';
import '../../Details_Screen/details_screen.dart';
import 'banner.dart';
import 'categories.dart';
import 'popular_and_more_screen.dart';
import 'popular_product_card.dart';
import 'multi_banner_card.dart';
import 'special_see_more_btn.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 500) {
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const BannerBoard(
                cTxt: 'Cashback ${'20'}%',
                sTxt: 'A Summer Day',
              ),
              const Categories(),
              const SpecialAndSeeMoreButton(
                text: 'Special For you',
                txt: 'See more',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      bannerProduct.length,
                      (index) => SpecialBannerCard(
                        bannerProduct: bannerProduct[index],
                      ),
                    ),
                  ],
                ),
              ),
              const PopularAndMoreScreen(
                text: 'Popular Products',
                txt: 'See more',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      product.length,
                      (index) => PopularProductCard(
                        product: product[index],
                        press: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                            product: product[index],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BannerBoard(
              cTxt: 'Cashback ${'20'}%',
              sTxt: 'A Summer Day',
            ),
            const Categories(),
            const SpecialAndSeeMoreButton(
              text: 'Special For you',
              txt: 'See more',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    bannerProduct.length,
                    (index) => SpecialBannerCard(
                      bannerProduct: bannerProduct[index],
                    ),
                  ),
                ],
              ),
            ),
            const PopularAndMoreScreen(
              text: 'Popular Products',
              txt: 'See more',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    product.length,
                    (index) => PopularProductCard(
                      product: product[index],
                      press: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                            product: product[index],
                              ),
                            ),
                          );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
