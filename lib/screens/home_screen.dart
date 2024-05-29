import 'package:flutter/material.dart';
import 'package:foodrecipeapp/constants.dart';
import 'package:foodrecipeapp/models/category.dart';
import 'package:foodrecipeapp/models/food.dart';
import 'package:foodrecipeapp/widgets/categories.dart';
import 'package:foodrecipeapp/widgets/home_appbar.dart';
import 'package:foodrecipeapp/widgets/home_search_bar.dart';
import 'package:foodrecipeapp/widgets/quick_and_fast_list.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppbar(),
              SizedBox(
                height: 20,
              ),
              HomeSearchBar(),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/explore.png'))),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Categories(currentCat: currentCat),
              const SizedBox(
                height: 20,
              ),
              const QuickAndFastList()
            ],
          ),
        ),
      )),
    );
  }
}
