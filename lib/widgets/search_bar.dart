import 'package:easy_trek/core/extension/app_extension.dart';
import 'package:easy_trek/module/search_screen/view/search_screen.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSearch(context: context, delegate: SearchBarDelegate());
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: context.color.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: context.color.darkGrey,
              size: 20,
            ).pr(5),
            Text(
              "Search...",
              style: context.textStyles.bodyMedium!
                  .copyWith(color: context.color.darkGrey),
            ),
          ],
        ),
      ),
    );
  }
}
