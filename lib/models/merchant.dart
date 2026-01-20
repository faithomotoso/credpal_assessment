import '../ui/utils/image_utils.dart';

Merchant justfonesMerchant = Merchant(
  image: Images.justfones,
  name: "Just fones",
);
Merchant ogabasseyMerchant = Merchant(
  image: Images.ogabassey,
  name: "ogabassey",
);
Merchant okayfonesMerchant = Merchant(
  image: Images.okayfones,
  name: "okayfones",
);
Merchant imateStoresMerchant = Merchant(
  image: Images.imateStores,
  name: "imateStores",
);

Merchant slotMerchant = Merchant(image: Images.slot, name: "Slot");

List<Merchant> allMerchants = [
  Merchant(image: Images.justrite, name: "Justrite"),
  Merchant(image: Images.orile, name: "Orile Restaurant"),
  slotMerchant,
  Merchant(image: Images.pointek, name: "Pointek"),
  ogabasseyMerchant,
  Merchant(image: Images.casper, name: "Casper Stores", isOnline: false),
  Merchant(image: Images.dreamworks, name: "Dreamworks", isOnline: false),
  Merchant(image: Images.hubmart, name: "Hubmart"),
  Merchant(image: Images.justused, name: "Just Used"),
  justfonesMerchant,
];

class Merchant {
  final Images image;
  final String name;
  final bool isOnline;

  Merchant({required this.image, required this.name, this.isOnline = true});
}
