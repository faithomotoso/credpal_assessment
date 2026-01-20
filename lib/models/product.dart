import 'package:credpal_assessment/models/merchant.dart';

List<Product> topRowProducts = [
  Product(
    name: "Nokia G20",
    originalPrice: 88000,
    imageUrl: "https://fdn2.gsmarena.com/vv/pics/nokia/nokia-g20-2.jpg",
    merchant: justfonesMerchant,
    discountPrice: 39780,
    promoPercentage: 40,
  ),
  Product(
    name: "iPhone XS Max 4GB 256GB",
    imageUrl:
        "https://cdn.alloallo.media/catalog/product/apple/iphone/iphone-xs-max/iphone-xs-max-gold.jpg",
    originalPrice: 315000,
    merchant: ogabasseyMerchant,
    discountPrice: 295999,
  ),
  Product(
    name: "Sony WH-1000XM6",
    imageUrl:
        "https://www.justfones.ng/pub/media/catalog/product/cache/5648c3762d02de8e3317bdf7a5051262/s/o/sony_whxm6-1.png",
    originalPrice: 599000,
    merchant: justfonesMerchant,
    discountPrice: 500000,
  ),
  Product(
    name: "OnePlus 10 Pro",
    imageUrl: "https://fdn2.gsmarena.com/vv/pics/oneplus/oneplus-10-pro-2.jpg",
    originalPrice: 750000,
    merchant: slotMerchant,
  ),
  Product(
    name: "Apple Watch Ultra 2",
    imageUrl:
        "https://i5.walmartimages.com/seo/Apple-Watch-Ultra-2-49-mm-titanium-smart-watch-Ocean-band-fluoroelastomer-orange-wrist-size-5-12-7-87-64-GB-Wi-Fi-LTE-UWB-Bluetooth-4G-2-17-oz_554813d6-72ed-4e7c-9582-0c3399f1bf02.69cc606406b601a85df32816cf1b5838.jpeg",
    originalPrice: 650000,
    merchant: imateStoresMerchant,
    discountPrice: 600000,
  ),
];

List<Product> bottomRowProducts = [
  Product(
    name: "Anker Soundcore Flare 2",
    imageUrl:
        "https://cdn.shopify.com/s/files/1/0515/5553/2976/products/A3165011_TD01_V1_3838x.jpg?v=1650019374",
    originalPrice: 88000,
    merchant: okayfonesMerchant,
    discountPrice: 39780,
  ),
  Product(
    name: "iPhone 12 Pro",
    imageUrl:
        "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-pro-r1.jpg",
    originalPrice: 515000,
    merchant: imateStoresMerchant,
    discountPrice: 490500,
  ),
  Product(
    name: "iPhone 17 Air",
    imageUrl:
        "https://www.techspecs.info/_next/image/?url=https%3A%2F%2Fwww.techspecs.info%2Fuploads%2FAPPLE_IPHONE_17_AIR_5_G_57cfcf6c5c.png&w=384&q=75",
    originalPrice: 1500000,
    merchant: slotMerchant,
    discountPrice: 1000000,
  ),
  Product(
    name: "Apple iPad Pro 11 (2022)",
    imageUrl:
        "https://fdn2.gsmarena.com/vv/pics/apple/apple-ipad-pro-11-2022-1.jpg",
    originalPrice: 800000,
    merchant: imateStoresMerchant,
  ),
  Product(
    name: "Samsung Galaxy Z Fold7",
    imageUrl:
        "https://fdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-z-fold7-2.jpg",
    originalPrice: 1_200_000,
    merchant: slotMerchant,
  ),
];

class Product {
  final String name;
  final String imageUrl;
  final double originalPrice;
  final Merchant merchant;
  final double? discountPrice;
  final double? promoPercentage;

  Product({
    required this.name,
    required this.imageUrl,
    required this.originalPrice,
    required this.merchant,
    this.discountPrice,
    this.promoPercentage,
  });
}
