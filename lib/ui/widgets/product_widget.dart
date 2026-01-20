import 'package:cached_network_image/cached_network_image.dart';
import 'package:credpal_assessment/models/product.dart';
import 'package:credpal_assessment/ui/utils/colors.dart';
import 'package:credpal_assessment/ui/utils/image_utils.dart';
import 'package:flutter/material.dart';

import '../utils/currency.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    Color shadowColor = AppColors.cC1C1CE.withValues(alpha: 0.4);

    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.4,
      width: 180,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 14),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Builder(
                          builder: (context) {
                            Widget placeholder = Opacity(
                              opacity: 0.3,
                              child: Center(
                                child: ImageAsset(
                                  image: product.merchant.image,
                                  boxFit: BoxFit.cover,
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                            );

                            return CachedNetworkImage(
                              imageUrl: product.imageUrl,
                              fit: BoxFit.contain,
                              placeholder: (ctx, _) => placeholder,
                              errorWidget: (ctx, _, _) {
                                return placeholder;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 6,
                      left: 7,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: shadowColor,
                              spreadRadius: 0.0,
                              blurRadius: 5,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Builder(
                            builder: (ctx) {
                              if ((product.promoPercentage ?? 0) != 0) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Pay",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.cC1C1CE,
                                      ),
                                    ),
                                    Text(
                                      "${product.promoPercentage!.round()}%",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: AppColors.c274FED,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                );
                              }

                              return ImageAsset(
                                image: product.merchant.image,
                                boxFit: BoxFit.fitHeight,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 13),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: AppColors.c1A1A1A,
                      ),
                    ),
                    const SizedBox(height: 8),
                    OverflowBar(
                      spacing: 14,
                      children: [
                        if ((product.discountPrice ?? 0) != 0) ...[
                          Text(
                            formatCurrency(product.discountPrice!),
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.c274FED,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(width: 12),
                        ],
                        Text(
                          formatCurrency(product.originalPrice),
                          style: TextStyle(
                            color: AppColors.cB2B2CC,
                            decoration: product.discountPrice != null
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                            fontSize: product.discountPrice != null ? 12 : 14,
                            fontWeight: product.discountPrice != null
                                ? FontWeight.normal
                                : FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
