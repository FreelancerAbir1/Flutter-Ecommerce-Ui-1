import 'package:flutter/material.dart';
import 'package:flutter1/constant.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  final String img, hintText;
  const SearchBar({
    Key? key,
    required this.img,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
          border: Border.all(width: 01, color: Colors.white10)),
      child: Row(
        children: [
          SvgPicture.asset(img),
          const SizedBox(
            width: 05,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            child: TextFormField(
              keyboardAppearance: Brightness.light,
              decoration: InputDecoration(
                helperMaxLines: 13,
                errorMaxLines: 13,
                hintMaxLines: 13,
                hintStyle: TextStyle(
                    fontWeight: kDefaultFontNormal.fontWeight,
                    color: kTextColor),
                border: InputBorder.none,
                hintText: hintText,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
