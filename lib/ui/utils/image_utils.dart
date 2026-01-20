import 'package:flutter/material.dart';

final String imageBasePath = "assets/images";

enum Images {
  casper("casper.png"),
  dreamworks("dreamworks.png"),
  hubmart("hubmart.png"),
  justfones("justfones.png"),
  justrite("justrite.png"),
  ogabassey("ogabassey.png"),
  orile("orile.png"),
  pointek("pointek.png"),
  slot("slot.png"),
  justused("justused.png"),
  okayfones("okayfones.png"),
  imateStores("imatestores.png");

  final String imageName;

  const Images(this.imageName);
}

class ImageAsset extends StatelessWidget {
  final Images image;
  final double? height;
  final double? width;
  final BoxFit? boxFit;

  const ImageAsset({
    required this.image,
    this.height,
    this.width,
    this.boxFit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "$imageBasePath/${image.imageName}",
      height: height,
      width: width,
      fit: BoxFit.cover,
    );
  }
}
