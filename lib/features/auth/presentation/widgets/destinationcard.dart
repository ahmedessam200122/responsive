import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final String title;
  final String country;
  final String rating;
  final String price;

  const DestinationCard({
    super.key,
    required this.title,
    required this.country,
    required this.rating,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 252, 250, 250),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(country),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text("⭐ $rating"),
                    const Spacer(),
                    Text(price),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}