import 'package:flutter/material.dart';

import '../utils/colors.dart';

class OnlineIndicator extends StatelessWidget {
  final Widget child;
  final bool showIndicator;

  const OnlineIndicator({required this.child, this.showIndicator = true, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: [
        Positioned.fill(child: child),
        if (showIndicator) Positioned(
          right: 0,
          top: 0,
          child: SizedBox(
            height: 17,
            width: 17,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SizedBox(
                  height: 11,
                  width: 11,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.c24C78B,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
