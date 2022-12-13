import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constant.dart';
import 'check_out_btn.dart';
import 'voucher_code_btn.dart';

class CheckOut extends StatelessWidget {
  final String imgNote, imgBack;
  const CheckOut({
    Key? key,
    required this.imgNote,
    required this.imgBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return Container(
      height: sizeWidth <= 500 ? sizeHeight / 6 : sizeHeight / 3.5,
      width: sizeWidth,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: decoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey[200],
                child: SvgPicture.asset(
                  imgNote,
                ),
              ),
              Row(
                children: [
                  const VoucherCodedButton(),
                  SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(imgBack),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Total:\n ${'\$325.12'}',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: kDefaultFontBold.fontWeight,
                    color: kTextColor,
                  ),
                ),
              ),
              const CheckOutButton(),
            ],
          ),
        ],
      ),
    );
  }

  BoxDecoration decoration() {
    return const BoxDecoration(
      color: kTextLightColor,
      boxShadow: [
        BoxShadow(
          spreadRadius: 5,
          color: kTextColor,
          blurRadius: 5,
          offset: Offset(5, 5),
        ),
      ],
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    );
  }
}
