import "package:flutter/material.dart";

enum ItemSlotStatus { empty, fill }

class ItemSlotUtil {
  ItemSlotUtil._();

  static Key genKey({
    required int row,
    required int col,
  }) =>
      Key(
        "ItemSlot -> row: $row, col: $col",
      );
}

class ItemSlot extends StatefulWidget {
  final int row;

  final int col;

  final ItemSlotStatus status;

  final Function(int row, int col, ItemSlotStatus status)? onTap;

  const ItemSlot({
    required this.row,
    required this.col,
    required this.status,
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  State<ItemSlot> createState() => _ItemSlotState();
}

class _ItemSlotState extends State<ItemSlot> {
  @override
  Widget build(BuildContext context) {
    switch (widget.status) {
      case ItemSlotStatus.fill:
        return _FilledSlot(
          onTap: () {
            widget.onTap?.call(widget.row, widget.col, widget.status);
          },
        );
      default:
        return _EmptySlot(
          onTap: () {
            widget.onTap?.call(widget.row, widget.col, widget.status);
          },
        );
    }
  }
}

class _FilledSlot extends StatelessWidget {
  final Function onTap;

  const _FilledSlot({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onTap.call();
        },
        child: Container(
          width: 50,
          height: 50,
          color: Colors.green,
          margin: const EdgeInsets.all(8),
        ),
      );
}

class _EmptySlot extends StatelessWidget {
  final Function onTap;

  const _EmptySlot({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onTap.call();
        },
        child: Container(
          width: 50,
          height: 50,
          color: Colors.red,
          margin: const EdgeInsets.all(8),
        ),
      );
}
