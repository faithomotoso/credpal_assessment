import 'package:credpal_assessment/models/product.dart';
import 'package:credpal_assessment/ui/widgets/product_widget.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final double heightFactor = 0.35;

    return Container(
      decoration: BoxDecoration(color: AppColors.cF1F3FE),
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * heightFactor,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (ctx, idx) => const SizedBox(width: 24),
              itemCount: topRowProducts.length,
              itemBuilder: (ctx, idx) =>
                  ProductWidget(product: topRowProducts[idx]),
            ),
          ),
          const SizedBox(height: 26,),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * heightFactor,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (ctx, idx) => const SizedBox(width: 24),
              itemCount: bottomRowProducts.length,
              itemBuilder: (ctx, idx) =>
                  ProductWidget(product: bottomRowProducts[idx]),
            ),
          ),
        ],
      ),
    );
  }
}
