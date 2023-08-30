import 'package:flutter/material.dart';

class MyExpansionTileItem {
  final String title;
  List<MyExpansionTileItem> tiems = [];
  MyExpansionTileItem(this.title, {this.tiems = const []});
}

class MyExpansionTile extends StatefulWidget {
  final List<MyExpansionTileItem> tiems;

  const MyExpansionTile({super.key, this.tiems = const []});

  @override
  State<StatefulWidget> createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  @override
  Widget build(BuildContext context) {
// ExpansionTile
    return Container(
      color: Colors.black12,
      height: 400,
      child: ListView.builder(
        itemCount: widget.tiems.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return _item(widget.tiems[index], 0);
        },
      ),
    );
  }

  Widget _title() {
    return const Text('title');
  }

  List<Widget> children(List<MyExpansionTileItem> tiems, int index) {
    List<Widget> children = [];
    for (var item in tiems) {
      children.add(_item(item, index));
    }
    return children;
  }

  Widget _item(MyExpansionTileItem item, int index) {
    // if (item.tiems.isEmpty) {
    //   return ListTile(
    //     title: _titleItem(index, item.title),
    //     onTap: () {
    //       print('onTap');
    //     },
    //   );
    // }

    return ExpansionTile(
      leading: Container(color: Colors.red, width: 20.0 * index, height: 40),

      // title: Text('${' ' * index}${item.title}'),
      title: _titleItem(index, item.title),
      trailing: _trailing(),
      // initiallyExpanded: true,
      expandedAlignment: Alignment.topRight,
      // backgroundColor: Colors.red,
      // controlAffinity: ListTileControlAffinity.leading,
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: children(item.tiems, index + 1),
      onExpansionChanged: (value) {
        print('onExpansionChanged $value');
      },
    );
  }

  Widget _titleItem(int index, String title) {
    return Container(
      color: Colors.blue,
      child: Row(
        children: [
          const Icon(Icons.expand_more),
          Text(title),
        ],
      ),
    );
  }

  Widget _trailing() {
    return const SizedBox(
      width: 50,
      child: Row(
        children: [
          Text('...'),
          Icon(Icons.add),
        ],
      ),
    );
  }
}
