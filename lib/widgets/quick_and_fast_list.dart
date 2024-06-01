import 'package:flutter/material.dart';
import 'package:foodrecipeapp/constants.dart';
import 'package:foodrecipeapp/models/food.dart';
import 'package:foodrecipeapp/screens/quick_foods_screen.dart';
import 'package:iconsax/iconsax.dart';

class QuickAndFastList extends StatelessWidget {
  const QuickAndFastList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Quick & Fast",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QuickFoodScreen()),
                  );
                },
                child: Text(
                  'View All',
                  style: TextStyle(color: kprimaryColor),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                foods.length,
                (index) => Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 200,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(foods[index].image),
                                        fit: BoxFit.fill)),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                foods[index].name,
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(Iconsax.flash_1,
                                      size: 18, color: Colors.grey),
                                  Text(
                                    "${foods[index].cal} Cal",
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  const Text(
                                    " . ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  const Icon(Iconsax.clock,
                                      size: 18, color: Colors.grey),
                                  Text(
                                    "${foods[index].time} Cal",
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Positioned(
                              top: 1,
                              right: 1,
                              child: IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(30, 30)),
                                iconSize: 20,
                                icon: foods[index].isLiked
                                    ? const Icon(
                                        Iconsax.heart5,
                                        color: Colors.red,
                                      )
                                    : const Icon(Iconsax.heart),
                              ))
                        ],
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
