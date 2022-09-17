import "package:cono/custom_widgets/item_slot.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<List<ItemSlot>> rows;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Home app"),
        ),
        body: adapter(),
      );

  Widget adapter() {
    if (rows.isNotEmpty) {
      final List<Widget> columnChildren = List<Widget>.empty(growable: true);

      rows.forEach((List<ItemSlot> row) {
        final List<Widget> rowChildren = List<Widget>.empty(growable: true);
        row.forEach(rowChildren.add);
        columnChildren.add(Row(
          children: rowChildren,
        ));
      });

      return Column(
        children: columnChildren,
      );
    } else {
      return const Text("vazio");
    }
  }

  void initialize() {
    rows = List<List<ItemSlot>>.empty(growable: true);
    for (int x = 0; x < 5; x++) {
      final List<ItemSlot> cols = List<ItemSlot>.empty(growable: true);
      for (int y = 0; y < 5; y++) {
        cols.add(ItemSlot(
          key: ItemSlotUtil.genKey(row: x, col: y),
          row: x,
          col: y,
          status: ItemSlotStatus.empty,
          onTap: (int row, int col, ItemSlotStatus status) {
            if (kDebugMode) {
              print("row $row, col $col, status $status");
            }
            setState(() {
              rows[row][col] = ItemSlot(
                key: rows[row][col].key,
                row: rows[row][col].row,
                col: rows[row][col].col,
                status: ItemSlotStatus.fill,
                onTap: rows[row][col].onTap,
              );
            });
          },
        ));
      }
      rows.add(cols);
    }
  }
}
