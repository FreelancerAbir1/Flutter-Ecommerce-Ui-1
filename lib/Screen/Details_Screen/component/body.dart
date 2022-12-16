import 'package:flutter/material.dart';
import 'package:flutter1/Model/product.dart';
import 'package:flutter1/Screen/Details_Screen/component/custom_btn.dart';
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
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: size.width,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
          return portraitMode(context);
        }
        return landscapeMode(context);
      }),
    );
  }

  Row landscapeMode(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 1.1,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                ProductImagScreen(
                  img: widget.product.productMiniImg[currentIndex],
                ),
                Positioned(bottom: 40, child: buildMiniImg()),
                Positioned(
                  top: 40,
                  child: Text(
                    widget.product.producttitle,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: kDefaultFontBold.fontWeight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 1.1,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProductDesc(text: widget.product.productDes),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SeeMoreDetails(
                      text: 'See more Details',
                      icon: 'assets/icons/arrow_right.svg',
                    ),
                    FavButton(
                      img: 'assets/icons/Heart Icon_2.svg',
                      product: product[currentIndex],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      ...List.generate(
                        product.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 30,
                            width: 30,
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
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                CustomButton(
                  text: 'Add to Cart',
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  SizedBox portraitMode(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                ProductImagScreen(
                  img: widget.product.productMiniImg[currentIndex],
                ),
                Positioned(bottom: 0, left: 0, right: 0, child: buildMiniImg()),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kTextLightColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  CustomButton(
                    text: 'Add to Cart',
                    press: () {},
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
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
