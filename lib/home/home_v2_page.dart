import "package:cono/custom_widgets/item_slot.dart";
import 'package:cono/home/model/slot_data.dart';
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class HomeV2Page extends StatefulWidget {
  const HomeV2Page({Key? key}) : super(key: key);

  @override
  State<HomeV2Page> createState() => _HomeV2PageState();
}

class _HomeV2PageState extends State<HomeV2Page> {
  late List<List<ItemSlot>> rows;
  late List<List<SlotData>> dataRows;

  @override
  void initState() {
    super.initState();
    dataRows = List<List<SlotData>>.empty(growable: true);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Home V2 app"),
        ),
        body: adapter(),
      );

  Widget adapter() {
    if (dataRows.isNotEmpty) {
      final List<Widget> columnChildren = List<Widget>.empty(growable: true);

      dataRows.forEach((List<SlotData> rowData) {
        final List<Widget> rowChildren = List<Widget>.empty(growable: true);

        rowData.forEach((SlotData columnData) {
          rowChildren.add(
            ItemSlot(
              row: 0,
              col: 0,
              status: columnData.type == SlotDataType.empty
                  ? ItemSlotStatus.empty
                  : ItemSlotStatus.fill,
            ),
          );
        });

        columnChildren.add(Row(
          children: rowChildren,
        ));
      });

      return Column(
        children: columnChildren,
      );
    } else {
      return Column(
        children: <Widget>[
          ItemSlot(
            row: 0,
            col: 0,
            status: ItemSlotStatus.empty,
            onTap: (int row, int col, ItemSlotStatus status) {
              if (kDebugMode) {
                print("row $row, col $col, status $status");
              }
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text("Escolhe"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        if (kDebugMode) {
                          print("vazio");
                        }
                        Navigator.pop(context, "vazio");
                      },
                      child: const Text("vazio"),
                    ),
                    TextButton(
                        onPressed: () {
                          if (kDebugMode) {
                            print("cheio");
                          }
                          setState(addFirst);
                          Navigator.pop(context, "cheio");
                        },
                        child: const Text("cheio")),
                  ],
                ),
              );
            },
          ),
        ],
      );
    }
  }

  void addFirst() {
    dataRows
      ..add(
        List<SlotData>.of(<SlotData>[
          SlotData(
            row: 0,
            column: 0,
            name: "text",
            type: SlotDataType.text,
          ),
          SlotData(
            row: 0,
            column: 1,
            name: "",
            type: SlotDataType.empty,
          ),
        ]),
      )
      ..add(
        List<SlotData>.of(<SlotData>[
          SlotData(
            row: 1,
            column: 0,
            name: "",
            type: SlotDataType.empty,
          ),
        ]),
      );
  }
}
