import 'package:flutter/material.dart';
import 'package:flutter1/Model/primary_class.dart';
import 'package:flutter1/Model/product.dart';
import 'package:flutter1/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'product_img_screen.dart';
import 'fav_btn.dart';
import 'product_desc.dart';
import 'see_more_details.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              ProductImagScreen(
                img: widget.product.productMiniImg[currentIndex],
              ),
              buildMiniImg(),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: kTextLightColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    widget.product.producttitle,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: kDefaultFontBold.fontWeight,
                    ),
                  ),
                  FavButton(
                    img: 'assets/icons/Heart Icon_2.svg',
                    product: product[currentIndex],
                  ),
                  ProductDesc(text: widget.product.productDes),
                  const SizedBox(
                    height: 20,
                  ),
                  const SeeMoreDetails(
                    text: 'See more Details',
                    icon: 'assets/icons/arrow_right.svg',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    height: 70,
                    child: Row(
                      children: [
                        ...List.generate(
                          product.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: widget.product.productColor[index],
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        CircleAvatar(
                          backgroundColor: kTextLightColor,
                          child: SvgPicture.asset('assets/icons/remove.svg'),
                        ),
                        const Spacer(),
                        CircleAvatar(
                          backgroundColor: kTextLightColor,
                          child: SvgPicture.asset('assets/icons/Plus Icon.svg'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PrimaryClass()
                      .customPrimaryButton(context, () {}, 'Add to Card'),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildMiniImg() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          widget.product.productMiniImg.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: kTextLightColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: currentIndex == index
                          ? Colors.black
                          : Colors.transparent,
                    )),
                child: Image.asset(
                  widget.product.productMiniImg[index],
                  height: 50,
                  width: 50,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
