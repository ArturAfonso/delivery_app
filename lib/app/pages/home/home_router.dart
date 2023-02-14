import 'package:dw9_delivery_app/app/pages/home/home_page.dart';
import 'package:dw9_delivery_app/app/repositories/products/products_respository.dart';
import 'package:dw9_delivery_app/app/repositories/products/products_respository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeRouter {
  HomeRouter._();
  static Widget get page => MultiProvider(
        providers: [
          Provider<ProductsRespository>(
            create: (context) => ProductsRespositoryImpl(
              dio: context.read(),
            ),
          ),
        ],
        child: const HomePage(),
      );
}
