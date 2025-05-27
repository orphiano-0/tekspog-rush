import 'package:floor/floor.dart';
import 'package:tekspogs/core/data/user_model.dart';
import 'package:tekspogs/features/shop/data/datasource/shop_dao.dart';
import 'package:tekspogs/features/shop/data/models/chip_model.dart';
import 'package:tekspogs/features/shop/data/models/pog_model.dart';
import 'package:tekspogs/features/shop/data/models/transaction_model.dart';

// part 'shop_database.g.dart';

@Database(
  version: 1,
  entities: [UserModel, ChipModel, PogModel, TransactionModel],
)
abstract class ShopDatabase extends FloorDatabase {
  ShopDao get shopDao;
}
