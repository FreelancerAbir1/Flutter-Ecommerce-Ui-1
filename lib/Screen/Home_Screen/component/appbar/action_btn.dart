import 'package:flutter/material.dart';
import 'package:flutter1/Model/product.dart';
import 'package:flutter1/constant.dart';
import 'package:flutter_svg/svg.dart';

class ActionButton extends StatelessWidget {
  final String cartIcon;
  final GestureTapCallback cartPress;
  final String notiIcon;
  final GestureTapCallback notiPress;

  const ActionButton({
    super.key,
    required this.cartIcon,
    required this.cartPress,
    required this.notiIcon,
    required this.notiPress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: IconButton(
                onPressed: cartPress,
                icon: SvgPicture.asset(
                  cartIcon,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: GestureDetector(
                onTap: cartPress,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      product.length.toString(),
                      style: TextStyle(
                        color: kTextLightColor,
                        fontWeight: kDefaultFontBold.fontWeight,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: IconButton(
                onPressed: notiPress,
                icon: SvgPicture.asset(
                  notiIcon,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: GestureDetector(
                onTap: notiPress,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: kTextLightColor,
                        fontWeight: kDefaultFontBold.fontWeight,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
