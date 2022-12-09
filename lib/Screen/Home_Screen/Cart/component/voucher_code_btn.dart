import 'package:flutter/material.dart';

import '../../../../constant.dart';

class VoucherCodedButton extends StatelessWidget {
  const VoucherCodedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Text(
        'Add voucher code',
        style: TextStyle(
          color: kTextColor,
        ),
      ),
    );
  }
}
