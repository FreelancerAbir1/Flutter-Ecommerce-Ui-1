import 'package:flutter/material.dart';
import 'package:flutter1/constant.dart';
import 'package:flutter_svg/svg.dart';

class ProfileAccountList extends StatelessWidget {
  final GestureTapCallback press;
  final String title;
  final String leading;
  final String trailing;
//''''
  const ProfileAccountList({
    Key? key,
    required this.press,
    required this.title,
    required this.leading,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: press,
            title: Text(
              title,
              style: const TextStyle(
                color: kTextColor,
              ),
            ),
            leading: SvgPicture.asset(
              leading,
              color: Colors.red,
            ),
            trailing: SvgPicture.asset(trailing),
          ),
        ),
      ),
    );
  }
}
