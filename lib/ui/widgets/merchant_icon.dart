import 'package:credpal_assessment/models/merchant.dart';
import 'package:credpal_assessment/ui/utils/image_utils.dart';
import 'package:credpal_assessment/ui/widgets/online_indicator.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MerchantIcon extends StatelessWidget {
  final Merchant merchant;

  const MerchantIcon({required this.merchant, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 5,
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: OnlineIndicator(
            showIndicator: merchant.isOnline,
            child: ImageAsset(image: merchant.image, height: 60, width: 60),
          ),
        ),
        Text(
          merchant.name,
          style: TextStyle(fontSize: 12, color: AppColors.c1A1A1A),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
