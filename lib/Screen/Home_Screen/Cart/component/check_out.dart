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
    return Container(
      decoration: decoration(),
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey[200],
                child: SvgPicture.asset(
                  imgNote,
                ),
              ),
              const Spacer(
                flex: 5,
              ),
              const VoucherCodedButton(),
              const Spacer(
                flex: 1,
              ),
              SvgPicture.asset(imgBack),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
                const Spacer(
                  flex: 5,
                ),
                const CheckOutButton(),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
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
