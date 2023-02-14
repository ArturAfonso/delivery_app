import 'package:dw9_delivery_app/app/models/product_model.dart';

abstract class ProductsRespository {
  Future<List<ProductModel>> findAllProducts();
}
