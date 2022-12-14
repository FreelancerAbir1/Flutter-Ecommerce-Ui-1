import 'package:flutter/material.dart';
import 'package:flutter1/Model/banner_product.dart';
import 'package:flutter1/constant.dart';

class SpecialBannerCard extends StatelessWidget {
  final BannerProduct bannerProduct;

  const SpecialBannerCard({
    super.key,
    required this.bannerProduct,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        height: 120,
        width: 250,
        decoration: BoxDecoration(
          border: Border.all(width: 01, color: Colors.grey),
          image: DecorationImage(
            colorFilter:
                const ColorFilter.mode(Colors.grey, BlendMode.colorBurn),
            fit: BoxFit.cover,
            image: AssetImage(bannerProduct.bannerImg),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
              spreadRadius: 2,
              offset: Offset(2, 7),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Text.rich(
            TextSpan(
              text: '${bannerProduct.bannerTitle}\n',
              style: TextStyle(
                fontSize: 25,
                fontWeight: kDefaultFontBold.fontWeight,
                color: kTextLightColor,
              ),
              children: [
                TextSpan(text: '${bannerProduct.bannerBrand}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
