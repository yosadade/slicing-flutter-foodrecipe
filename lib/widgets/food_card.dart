import 'package:flutter/material.dart';
import 'package:foodrecipeapp/models/food.dart';
import 'package:iconsax/iconsax.dart';

class FoodCard extends StatelessWidget {
  final Food food;
  const FoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(food.image), fit: BoxFit.fill)),
              ),
              const SizedBox(height: 10),
              Text(
                food.name,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Icon(Iconsax.flash_1, size: 18, color: Colors.grey),
                  Text(
                    "${food.cal} Cal",
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const Text(
                    " . ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Icon(Iconsax.clock, size: 18, color: Colors.grey),
                  Text(
                    "${food.time} Cal",
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Row(
                children: [
                  Icon(
                    Iconsax.star5,
                    color: Colors.yellow.shade600,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${food.rate}/5',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "(${food.reviews} Reviews)",
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  )
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
                icon: food.isLiked
                    ? const Icon(
                        Iconsax.heart5,
                        color: Colors.red,
                      )
                    : const Icon(Iconsax.heart),
              ))
        ],
      ),
    );
  }
}
