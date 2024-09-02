import 'package:floor/floor.dart';

import 'elazkar_entity.dart';
@dao
abstract class ElazkarDao {
  @Query('SELECT * FROM all_azkar')
  Future<List<AllAzkar>> getAllAzkar();

  @Query('SELECT * FROM azkar WHERE allAzkarId = :allAzkarId')
  Future<List<Azkar>> getAzkarByAllAzkarId(int allAzkarId);

  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<void> insertAllAzkar(AllAzkar allAzkar);

  @Insert(onConflict: OnConflictStrategy.ignore)
  Future<void> insertAzkar(Azkar azkar);

  @delete
  Future<void> deleteAzkar(Azkar azkar);

  @delete
  Future<void> deleteAllAzkar(AllAzkar allAzkar);
}
