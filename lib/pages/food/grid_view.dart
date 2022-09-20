import 'package:flutter/material.dart';

class FoodGridView extends StatelessWidget {
  const FoodGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              100,
              (index) => Center(
                    child: Text("Item $index"),
                  )),
        ),
      ],
    );
  }
}
