import 'package:credpal_assessment/models/merchant.dart';
import 'package:credpal_assessment/ui/utils/spacing.dart';
import 'package:credpal_assessment/ui/widgets/merchant_icon.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class FeaturedMerchants extends StatelessWidget {
  const FeaturedMerchants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: horizontalPadding.add(EdgeInsets.symmetric(vertical: 30)),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Featured Merchants",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: AppColors.c33334C,
                ),
              ),
              TextButton(onPressed: () {}, child: const Text("View all")),
            ],
          ),
          const SizedBox(height: 30),
          GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 30,
              childAspectRatio: 0.7
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List<Widget>.from(
              allMerchants.map((m) => MerchantIcon(merchant: m)),
            ),
          ),
        ],
      ),
    );
  }
}
