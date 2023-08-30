import 'package:flutter/material.dart';

import 'my_expansion_tile.dart';

class ExpansionTileExample extends StatelessWidget {
  const ExpansionTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    MyExpansionTileItem items = MyExpansionTileItem('更目录', tiems: [
      MyExpansionTileItem('1-1', tiems: [
        MyExpansionTileItem('1-2', tiems: [
          MyExpansionTileItem('1-3', tiems: [
            MyExpansionTileItem('1-4', tiems: []),
          ])
        ])
      ]),
      MyExpansionTileItem('2-1', tiems: [
        MyExpansionTileItem('2-2', tiems: [
          MyExpansionTileItem('2-3', tiems: [
            MyExpansionTileItem('2-4', tiems: []),
          ])
        ])
      ])
    ]);

    return Column(
      children: [
        TextButton(
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: const Text('back'),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        MyExpansionTile(tiems: [items]),
      ],
    );
  }
}
