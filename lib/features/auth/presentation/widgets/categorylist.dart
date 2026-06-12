import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: const [
        CategoryChip("All"),
        CategoryChip("Beach"),
        CategoryChip("Mountain"),
        CategoryChip("City"),
        CategoryChip("Culture"),
      ],
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String title;

  const CategoryChip(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Color.fromARGB(255, 0, 128, 128),
      label: Text(title),
    );
  }
}