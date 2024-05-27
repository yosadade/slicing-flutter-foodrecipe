import 'package:flutter/material.dart';
import 'package:foodrecipeapp/constants.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: const Column(
                children: [
                  Icon(
                    Iconsax.home,
                    color: kprimaryColor,
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: const Column(
                children: [
                  Icon(
                    Iconsax.home,
                    color: kprimaryColor,
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: const Column(
                children: [
                  Icon(
                    Iconsax.home,
                    color: kprimaryColor,
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: const Column(
                children: [
                  Icon(
                    Iconsax.home,
                    color: kprimaryColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
