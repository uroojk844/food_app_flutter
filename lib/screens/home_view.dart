import 'package:flutter/material.dart';
import 'package:food_app/components/icon_btn.dart';
import 'package:food_app/components/item_card.dart';
import 'package:food_app/models/items_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/Pattern.png"),
            ),
          ),
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Find Your\nFavorite Food",
                    style: TextStyle(
                      fontSize: 31,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconBtn(
                    shadow: true,
                    bgColor: Colors.white,
                    icon: Icons.notifications_none_rounded,
                    iconColor: Color.fromARGB(255, 88, 207, 92),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(249, 168, 77, .15),
                          borderRadius: BorderRadius.circular(15)),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 24,
                          ),
                          hintText: "What do you want to order?",
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(218, 99, 23, .5),
                          ),
                          prefixIconColor: Color.fromRGBO(218, 99, 23, 1),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(18),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const IconBtn(
                    shadow: true,
                    bgColor: Color.fromRGBO(249, 168, 77, .15),
                    icon: Icons.filter_list_rounded,
                    iconColor: Color.fromRGBO(218, 99, 23, .5),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Popular Restaurant",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GridView.builder(
                  itemCount: items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ItemCard(index: index),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
