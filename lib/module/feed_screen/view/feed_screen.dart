import 'package:easy_trek/widgets/scrollable_column.dart';
import 'package:easy_trek/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScrollableColumn(children: [
        SearchBar(),
      ]),
    );
  }
}
