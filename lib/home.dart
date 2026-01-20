import 'package:credpal_assessment/ui/utils/colors.dart';
import 'package:credpal_assessment/ui/widgets/featured_merchants.dart';
import 'package:credpal_assessment/ui/widgets/featured_products.dart';
import 'package:credpal_assessment/ui/widgets/search_bar.dart';
import 'package:credpal_assessment/ui/widgets/top_section.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: AppColors.cD0DAFF, scrolledUnderElevation: 0.0,),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFloatingHeader(child: TopSection()),
            SliverToBoxAdapter(child: SearchWidget()),
            SliverToBoxAdapter(child: FeaturedProducts()),
            SliverToBoxAdapter(child: FeaturedMerchants())
          ],
        ),
      ),
    );
  }
}
