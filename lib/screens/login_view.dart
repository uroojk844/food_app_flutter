import 'package:flutter/material.dart';
import 'package:food_app/components/input_field.dart';
import 'package:food_app/components/rounded_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/Pattern.png"),
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/img/logo.png"),
              const Text(
                "FoodNinja",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 88, 207, 92),
                ),
              ),
              const Text(
                "Deliver Favorite Food",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Login To Your Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 30),
              const InputField(placeholder: "Email"),
              const SizedBox(height: 12),
              const InputField(placeholder: "Password", isSecure: true),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "or Continue with",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedButton(
                    label: "Facebook",
                    src: "assets/img/facebook.png",
                  ),
                  SizedBox(width: 16),
                  RoundedButton(
                    label: "Google",
                    src: "assets/img/google.png",
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Forget Your Password?",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 88, 207, 92),
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromARGB(255, 88, 207, 92),
                  ),
                ),
              ),
              Container(
                width: 130,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 88, 207, 92),
                      Color.fromARGB(255, 42, 176, 47),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/main');
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
