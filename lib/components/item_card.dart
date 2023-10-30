import 'package:flutter/material.dart';
import 'package:food_app/models/items_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/img/${items[index].image}",
            fit: BoxFit.cover,
            height: 90,
          ),
          Text(
            items[index].name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            items[index].desc,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
