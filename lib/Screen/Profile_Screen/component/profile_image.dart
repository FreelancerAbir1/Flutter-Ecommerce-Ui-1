import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    required this.profilePic,
    required this.imagePicker,
  }) : super(key: key);

  final String profilePic;
  final String imagePicker;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 60,
            backgroundImage: AssetImage(
              profilePic,
            ),
          ),
          Positioned(
            bottom: -5,
            left: 50,
            right: 0,
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: SvgPicture.asset(
                  imagePicker,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  RoundedRectangleBorder borderRadius(size) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(size),
    );
  }
}
