import 'package:bike_rental/Providers/cart_item.dart';
import 'package:flutter/material.dart';

class CartProvider extends InheritedWidget{
  final CartItem cart = CartItem();

  CartProvider({required Widget child}): super(child:child);
  static CartProvider? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<CartProvider>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}