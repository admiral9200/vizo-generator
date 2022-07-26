import 'package:bagel_db/bagel_db.dart';

abstract class BagelRepository {
  BagelDBRequest get collection;
}
