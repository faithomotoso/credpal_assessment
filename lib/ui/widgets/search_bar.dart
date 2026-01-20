import 'package:credpal_assessment/ui/utils/colors.dart';
import 'package:credpal_assessment/ui/utils/spacing.dart';
import 'package:credpal_assessment/ui/utils/svg_utils.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    final InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.transparent),
    );

    return Container(
      color: Colors.white,
      padding: horizontalPadding.add(EdgeInsets.only(top: 18, bottom: 24)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        spacing: 20,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.cF4F5FE,
                border: border,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 11,
                ).copyWith(left: 0),
                hintText: "Search for products or stores",
                hintStyle: TextStyle(
                  color: AppColors.cA9A9C6,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                focusedBorder: border.copyWith(
                  borderSide: BorderSide(color: AppColors.cA9A9C6),
                ),
                disabledBorder: border,
                focusedErrorBorder: border,
                errorBorder: border,
                enabledBorder: border,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.center,
                    heightFactor: 1,
                    widthFactor: 1,
                    child: SvgAsset(
                      icon: SvgIcon.search,
                      height: 18,
                      width: 18,
                    ),
                  ),
                ),
                prefixIconConstraints: BoxConstraints(maxWidth: 40),
              ),
            ),
          ),
          SizedBox(
            height: 45,
            width: 45,
            child: FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(11, 10, 10, 11),
                backgroundColor: AppColors.cF6F7FE,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: SvgAsset(icon: SvgIcon.scan, height: 24, width: 24),
            ),
          ),
        ],
      ),
    );
  }
}
