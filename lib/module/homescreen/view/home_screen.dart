import 'package:easy_trek/core/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/trek_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        title: const Text("Discover"),
        titleTextStyle: context.textStyles.headlineMedium,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)).ph(8)
        ],
      ),
      body: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              tabs: const [
                Text("Mountain"),
                Text("Jungle"),
                Text("Water"),
                Text("Beach"),
              ],
              labelPadding: const EdgeInsets.symmetric(horizontal: 20),
              labelStyle: context.textStyles.labelMedium!
                  .apply(color: context.color.darkGrey),
              unselectedLabelStyle: context.textStyles.labelMedium,
            ).pb(24),
            Expanded(
                child: TabBarView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.fh,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const TrekCard().pr(16),
                          const TrekCard().pr(16),
                          const TrekCard().pr(16),
                          const TrekCard().pr(16),
                        ],
                      ),
                    ),
                  ).pb(28),
                  Text(
                    "Top Destination",
                    style: context.textStyles.titleLarge,
                  ).pb(16),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.placeDetailScreen);
                    },
                    child: Container(
                      height: 12.fh,
                      width: 60.fw,
                      decoration: BoxDecoration(
                          color: context.color.primaryColor,
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                AssetPaths.mountain4,
                                fit: BoxFit.cover,
                                height: 12.fh,
                                width: 18.fh,
                              ).pr(8),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Mt. Everest",
                                    style: context.textStyles.headlineSmall,
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    "Sagarmatha",
                                    style: context.textStyles.displayMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ).ph(16),
              Column(
                children: const [Text("Jungle")],
              ),
              Column(
                children: const [Text("Water")],
              ),
              Column(
                children: const [Text("Beach")],
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
