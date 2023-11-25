import 'package:flutter/material.dart';
import 'package:ro9ya/models/ro9ya_item.dart';
import 'package:ro9ya/screens/widgets/ro9ya_tile.dart';

class Ro9yaScreen extends StatelessWidget {
  final List<Ro9yaItem> ro9yaItems;
  const Ro9yaScreen({super.key, required this.ro9yaItems});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: ro9yaItems
            .map(
              (ro9yaItem) => Ro9yaTile(
                ro9yaItem: ro9yaItem,
              ),
            )
            .toList(),
      ),
    );
  }
}
