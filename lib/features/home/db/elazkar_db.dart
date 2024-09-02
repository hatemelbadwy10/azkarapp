
import 'package:floor/floor.dart';
import 'elazkar_dao.dart';
import 'elazkar_entity.dart';
@Database(version: 1, entities: [AllAzkar, Azkar])
abstract class ElazkarDb extends FloorDatabase {
  ElazkarDao get elazkarDao;
}
