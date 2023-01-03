import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grofast/screens/home_screen/widgets/search_widget.dart';
import 'package:grofast/utils/colors.dart';
import 'package:grofast/utils/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TextEditingController searchController = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(MyImages.iconNotification, width: 20),
          ),
          const SizedBox(width: 50),
        ],
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage("https://source.unsplash.com/random/10"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 40,
              width: 138,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 1, color: MyColors.c777777)),
              child: const Center(
                child: Text(
                  "Yona's Home",
                  style: TextStyle(
                      fontSize: 12,
                      color: MyColors.c9C9C9C,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Hey Yona 👋",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: MyColors.c194B38,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 5),
            child: Text(
              "Find fresh groceries you want",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: MyColors.c9C9C9C,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 18, bottom: 18),
            child: Row(
              children: [
                MySearchWidget(
                  hintName: "Search fresh groceries",
                  prefixImage: MyImages.iconSearch,
                  controller: searchController,
                ),
                const SizedBox(width: 18),
                Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          MyColors.c26AD71,
                          MyColors.c32CB4B,
                        ]),
                  ),
                  child: SvgPicture.asset(MyImages.iconQrCode),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  height: 150,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: MyColors.c2BAF6F
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
