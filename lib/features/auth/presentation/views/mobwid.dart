import 'package:flutter/material.dart';
import 'package:responsive/features/auth/presentation/widgets/categorylist.dart';
import 'package:responsive/features/auth/presentation/widgets/destinationcard.dart';
import 'package:responsive/features/auth/presentation/widgets/featuredcard.dart';
import 'package:responsive/features/auth/presentation/widgets/searchwid.dart';
import 'package:responsive/features/auth/presentation/widgets/sectiontitle.dart';

class Mobwid extends StatefulWidget {
  const Mobwid({super.key});

  @override
  State<Mobwid> createState() => _MobwidState();
}

class _MobwidState extends State<Mobwid> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          const SearchWidget(),
          const SizedBox(height: 15),

          const FeaturedCard(),

          const SizedBox(height: 20),

          sectionTitle("Categories"),

          const SizedBox(height: 10),

          const CategoryList(),

          const SizedBox(height: 20),

          sectionTitle("Popular"),

          const SizedBox(height: 10),

          Expanded(
            child: ListView(
              children: const [
                DestinationCard(
                  title: "Kyoto",
                  country: "Japan",
                  rating: "4.9",
                  price: "\$820",
                ),
                SizedBox(height: 10),
                DestinationCard(
                  title: "Bali",
                  country: "Indonesia",
                  rating: "4.8",
                  price: "\$640",
                ),
                SizedBox(height: 10),
                DestinationCard(
                  title: "Paris",
                  country: "France",
                  rating: "4.7",
                  price: "\$950",
                ),
              ],
            ),
          )
        ],
      ),);
  }
}