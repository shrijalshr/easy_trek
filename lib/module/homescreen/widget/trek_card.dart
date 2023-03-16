import 'package:easy_trek/core/export.dart';
import 'package:flutter/material.dart';

class TrekCard extends StatelessWidget {
  const TrekCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
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
