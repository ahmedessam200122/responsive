import 'package:flutter/material.dart';
import 'package:responsive/features/auth/presentation/widgets/categorylist.dart';
import 'package:responsive/features/auth/presentation/widgets/destinationcard.dart';
import 'package:responsive/features/auth/presentation/widgets/featuredcard.dart';
import 'package:responsive/features/auth/presentation/widgets/searchwid.dart';
import 'package:responsive/features/auth/presentation/widgets/sectiontitle.dart';

class Webwid extends StatefulWidget {
  const Webwid({super.key});

  @override
  State<Webwid> createState() => _WebwidState();
}

class _WebwidState extends State<Webwid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SearchWidget(),
          const SizedBox(height: 20),

          const FeaturedCard(),

          const SizedBox(height: 20),

          sectionTitle("Categories"),

          const SizedBox(height: 10),

          const CategoryList(),

          const SizedBox(height: 20),

          sectionTitle("Popular Destinations"),

          const SizedBox(height: 10),

          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: const [
                DestinationCard(
                  title: "Bali",
                  country: "Indonesia",
                  rating: "4.8",
                  price: "\$640",
                ),
                DestinationCard(
                  title: "Paris",
                  country: "France",
                  rating: "4.7",
                  price: "\$950",
                ),
                DestinationCard(
                  title: "Machu Picchu",
                  country: "Peru",
                  rating: "4.9",
                  price: "\$1200",
                ),
                DestinationCard(
                  title: "Amalfi Coast",
                  country: "Italy",
                  rating: "4.8",
                  price: "\$780",
                ),
                DestinationCard(
                  title: "Iceland",
                  country: "Europe",
                  rating: "4.9",
                  price: "\$1100",
                ),
                DestinationCard(
                  title: "Maldives",
                  country: "Indian Ocean",
                  rating: "5.0",
                  price: "\$2400",
                ),
              ],
            ),
          )
        ],
      ),);
  }
}