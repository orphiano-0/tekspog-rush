import 'package:floor/floor.dart';
import 'package:tekspogs/features/shop/domain/entity/product.dart';

@Entity(tableName: 'products')
class ProductModel {
  @PrimaryKey()
  final String id;
  final String name;
  final double price;

  ProductModel({required this.id, required this.name, required this.price});

  Product toEntity() => Product(id: id, name: name, price: price);
  factory ProductModel.fromEntity(Product product) =>
      ProductModel(id: product.id, name: product.name, price: product.price);
}
