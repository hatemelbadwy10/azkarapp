import 'package:floor/floor.dart';

@Entity(tableName: "all_azkar")
class AllAzkar {
  @PrimaryKey(autoGenerate: true)
  final int id;

  final String? category;

  AllAzkar({required this.id, required this.category});
}

@Entity(
  tableName: 'azkar',
  foreignKeys: [
    ForeignKey(
      childColumns: ['allAzkarId'],
      parentColumns: ['id'],
      entity: AllAzkar,
    )
  ],
)
class Azkar {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String? text;
  final int? count;

  @ColumnInfo(name: 'allAzkarId')
  final int allAzkarId; // Foreign key reference

  Azkar({
    this.id,
    required this.text,
    required this.count,
    required this.allAzkarId,
  });
}
