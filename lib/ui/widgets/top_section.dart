import 'package:credpal_assessment/ui/utils/colors.dart';
import 'package:credpal_assessment/ui/utils/currency.dart';
import 'package:credpal_assessment/ui/utils/spacing.dart';
import 'package:credpal_assessment/ui/utils/svg_utils.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: horizontalPadding.copyWith(bottom: 20),
      decoration: BoxDecoration(color: AppColors.cD0DAFF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [const _LeftSection(), const _RightSection()],
      ),
    );
  }
}

class _LeftSection extends StatelessWidget {
  const _LeftSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w900,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text("Pay later", style: textStyle),
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            Text("everywhere", style: textStyle),
            SvgAsset(icon: SvgIcon.info),
          ],
        ),
      ],
    );
  }
}

class _RightSection extends StatelessWidget {
  const _RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: 10,
      children: [
        Text(
          "Shopping limit: ${formatCurrency(0)}",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          textAlign: TextAlign.end,
        ),
        FilledButton(
          onPressed: () {},
          style: FilledButton.styleFrom(
            // backgroundColor: AppColors.c274FED,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            textStyle: TextStyle(
              fontFamily: "Axiforma",
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
          ),
          child: const Text("Activate Credit"),
        ),
      ],
    );
  }
}
