import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 0, child: Image.asset("assets/img/my.jpg")),
          Positioned(
            bottom: 0,
            height: MediaQuery.sizeOf(context).height * 0.5,
            width: MediaQuery.sizeOf(context).width,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFf6f6f6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(42),
                  topRight: Radius.circular(42),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Urooj Khan",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.edit,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "uroojk844@gmail.com",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      leading: Image.asset("assets/img/voucher.png"),
                      title: const Text(
                        "You Have 3 Vouchers",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Favorite",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Container(
                      color: Colors.white,
                      child: ListTile(
                        leading: Image.asset("assets/img/food.png"),
                        title: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Spacy fresh crab\n",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                text: "Waroenk kita",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        subtitle: const Text(
                          "\$35",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.green,
                          ),
                        ),
                        trailing: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color(0xff53E88B),
                              Color(0xff15BE77),
                            ]),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Text(
                            "Buy Again",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
