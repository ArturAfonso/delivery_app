// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:dw9_delivery_app/app/pages/home/home_state.dart';
import 'package:dw9_delivery_app/app/repositories/products/products_respository.dart';

class HomeController extends Cubit<HomeState> {
  final ProductsRespository _productsRespository;

  HomeController(
    this._productsRespository,
  ) : super(const HomeState.initial());

  Future<void> loadProducts() async {
    emit(state.copyWith(status: HomeStateStatus.loading));
    try {
      final products = await _productsRespository.findAllProducts();
      // throw Exception();
      emit(state.copyWith(status: HomeStateStatus.loaded, products: products));
    } catch (e, s) {
      log("Erro ao buscar produtos", error: e, stackTrace: s);
      emit(
        state.copyWith(status: HomeStateStatus.error, errorMessage: "Erro ao buscar produtos"),
      );
    }
  }
}
