import 'package:flutter/material.dart';

Widget sectionTitle(String title, ) {
  return Row(
    children: [
      Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(),
      const Text(
        "See all",
        style: TextStyle(
          color: Colors.teal,
        ),
      ),
    ],
  );
}