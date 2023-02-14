// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dw9_delivery_app/app/core/exceptions/respoitory_exception.dart';
import 'package:dw9_delivery_app/app/core/rest_client/custom_dio.dart';
import 'package:dw9_delivery_app/app/models/product_model.dart';

import './products_respository.dart';

class ProductsRespositoryImpl implements ProductsRespository {
  final CustomDio dio;
  ProductsRespositoryImpl({
    required this.dio,
  });

  @override
  Future<List<ProductModel>> findAllProducts() async {
    try {
      final result = await dio.unAuth().get('/products');
      return result.data.map<ProductModel>((p) => ProductModel.fromMap(p)).toList();
    } on DioError catch (e, s) {
      log("erro ao buscar produtos", error: e, stackTrace: s);
      throw RespoitoryException(message: "erro ao buscar produtos");
    }
  }
}
