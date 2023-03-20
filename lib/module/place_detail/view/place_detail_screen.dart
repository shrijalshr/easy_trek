import 'package:easy_trek/core/export.dart';
import 'package:easy_trek/widgets/scrollable_column.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          SizedBox(
            height: 60.fh,
            width: 100.fw,
            child: Stack(
              children: [
                Positioned(
                  top: -30,
                  child: SizedBox(
                    height: 55.fh,
                    width: 100.fw,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        AssetPaths.ghandruk2,
                        height: 45.fh,
                        width: 100.fw,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -30,
                  child: Container(
                    height: 55.fh,
                    width: 100.fw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black26,
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  bottom: 85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ghandruk",
                        style: context.textStyles.headlineLarge!
                            .copyWith(color: context.color.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: context.color.white,
                            size: 20,
                          ).pr(16),
                          Text(
                            "Kaski District, Gandaki",
                            style: context.textStyles.bodyLarge!
                                .copyWith(color: context.color.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 25,
                  top: 50,
                  child: SizedBox(
                      height: 50.fh,
                      child: const ScrollableColumn(children: [
                        SideThumbnail(
                          imgPath: AssetPaths.ghandruk3,
                        ),
                        SideThumbnail(
                          imgPath: AssetPaths.ghandruk4,
                        ),
                        SideThumbnail(
                          imgPath: AssetPaths.ghandruk1,
                        ),
                        SideThumbnail(
                          imgPath: AssetPaths.ghandruk3,
                        ),
                        SideThumbnail(
                          imgPath: AssetPaths.ghandruk3,
                        ),
                        SideThumbnail(
                          imgPath: AssetPaths.ghandruk3,
                        ),
                        SideThumbnail(
                          imgPath: AssetPaths.ghandruk3,
                        )
                      ])),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            margin: const EdgeInsets.only(bottom: 24),
            // height: 60.fh,
            width: 100.fh,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 16),
                        decoration: BoxDecoration(
                            color: context.color.white,
                            border: Border.all(
                              color: context.color.lightGrey,
                            ),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Text(
                              "Distance",
                              style: context.textStyles.titleMedium,
                            ),
                            Text(
                              "166",
                              style: context.textStyles.headlineLarge,
                            ),
                            Text(
                              "KM",
                              style: context.textStyles.labelMedium,
                            )
                          ],
                        ),
                      ).pr(10),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 16),
                        decoration: BoxDecoration(
                            color: context.color.white,
                            border: Border.all(
                              color: context.color.lightGrey,
                            ),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Text(
                              "Temp",
                              style: context.textStyles.titleMedium,
                            ),
                            Text(
                              "11",
                              style: context.textStyles.headlineLarge,
                            ),
                            //TODO: Degree notation
                            Text(
                              "C",
                              style: context.textStyles.labelMedium,
                            )
                          ],
                        ),
                      ).pr(10),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 16),
                        decoration: BoxDecoration(
                            color: context.color.white,
                            border: Border.all(
                              color: context.color.lightGrey,
                            ),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Text(
                              "Elevation",
                              style: context.textStyles.titleMedium,
                            ),
                            Text(
                              "2.0",
                              style: context.textStyles.headlineLarge,
                            ),
                            Text(
                              "KM",
                              style: context.textStyles.labelMedium,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Description",
                  style: context.textStyles.headlineMedium,
                ).pv(16),
                const ExpandableText(
                  "Ghandruk is a traditional Gurung village in Kaski Gandaki Province. It is home to a Gurung museum and has one of the best views of Annapurna South, Gangapurna, Annapurna III, Hiunchuli, and Machhapuchhre.  There is also a trek from Ghorekhani to Ghandruk that can also be done in one day. The trek tunnels through an incredible rhododendron forest.Ghandruk, being only 4-5 hours’ drive from Pokhara, makes the place a great weekend break amidst the mountains. One could also start the Annapurna trek from the Annapurna region in Ghandruk. Some of the other popular trekking trails include Mardi Himal Base camp, Landruk, Tadapani and Kimche. There is also a traditional Gurung museum that you can visit and a marketplace called Seuli Bazar where you can buy local goods and groceries. Access and accommodation: It takes approximately 1h 35m to drive 54.8 km from Pokhara to Ghandruk. There are hotels and loges in several places in Ghandruk.",
                  expandText: 'Read more',
                  collapseText: 'Read less',
                  maxLines: 3,
                  linkColor: Colors.black87,
                ).pb(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: context.textStyles.labelLarge,
                        ),
                        Text(
                          "Rs. 4850",
                          style: context.textStyles.headlineLarge!.copyWith(
                              color: context.color.darkGrey.withOpacity(.85)),
                        ),
                      ],
                    ),
                    CircleAvatar(
                        radius: 28,
                        backgroundColor: context.color.darkGrey,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: context.color.white,
                            )))
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class SideThumbnail extends StatelessWidget {
  const SideThumbnail({
    super.key,
    required this.imgPath,
  });

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: context.color.darkGrey.withOpacity(.3),
            offset: const Offset(0, 6),
            spreadRadius: 2,
            blurRadius: 4,
          )
        ],
        border: Border.all(
          color: context.color.white,
          width: 3,
        ),
        image: const DecorationImage(
            image: AssetImage(
              AssetPaths.ghandruk3,
            ),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
