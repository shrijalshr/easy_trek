import 'package:easy_trek/core/export.dart';
import 'package:flutter/material.dart';

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
                children: [
                  SizedBox(
                    height: 40.fh,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const TrekCard().pl(16),
                          const TrekCard().pl(16),
                          const TrekCard().pl(16),
                          const TrekCard().pl(16),
                        ],
                      ),
                    ),
                  )
                ],
              ),
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

class TrekCard extends StatelessWidget {
  const TrekCard({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        child: Stack(
          children: [
            SizedBox(
              height: 40.fh,
              width: 52.fw,
              child: Image.asset(
                AssetPaths.mountain1,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              child: SizedBox(
                width: 52.fw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        right: 32,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: context.color.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star_border_outlined,
                            size: 12,
                          ),
                          Text(
                            "4.8",
                            style: context.textStyles.titleSmall
                                ?.copyWith(fontSize: 8),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: context.color.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Machhapuchhare",
                            style: context.textStyles.displaySmall!
                                .copyWith(fontWeight: FontWeight.w900),
                          ),
                          Text("Annapurna massif of Gandaki Province",
                              style: context.textStyles.bodySmall!.copyWith(
                                fontSize: 8,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
