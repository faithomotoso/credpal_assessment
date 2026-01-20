import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

final String svgBasePath = "assets/icons";

enum SvgIcon {
  info("info.svg"),
  search("search.svg"),
  scan("scan.svg");

  final String iconName;

  const SvgIcon(this.iconName);
}

class SvgAsset extends StatelessWidget {
  final SvgIcon icon;
  final Color? color;
  final double? height;
  final double? width;

  const SvgAsset({
    required this.icon,
    this.color,
    this.height,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ColorFilter? colorFilter = color != null
        ? ColorFilter.mode(color!, BlendMode.srcIn)
        : null;

    return VectorGraphic(
      loader: AssetBytesLoader("$svgBasePath/${icon.iconName}"),
      colorFilter: colorFilter,
      height: height,
      width: width,
    );
  }
}
