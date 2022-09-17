enum SlotDataType { empty, text }

class SlotData {
  int column;
  int row;
  String name;
  SlotDataType type;

  SlotData({
    required this.column,
    required this.row,
    required this.name,
    required this.type,
  });

  @override
  String toString() =>
      "SlotData{column: $column, row: $row, name: $name, type: $type}";
}
