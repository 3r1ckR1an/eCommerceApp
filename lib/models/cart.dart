import 'package:flutter/material.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier {
  // lista de sapatos a venda
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Ultra Boost',
      price: '400',
      imagePath: 'lib/images/ultra_boost.png',
      description: 'Most confortable shoe ever',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '240',
      imagePath: 'lib/images/jordan_shoe.png',
      description: 'premium shoe',
    ),
  ];

  // lista de items no carrinho
  List<Shoe> userCart = [];

  // get lista sapatos a venda
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get carrinho
  List<Shoe> getUserCart() {
    return userCart;
  }

  // adicionar item ao carrinho
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remover item do carrinho
  void removeItemFromCart(Shoe shoe) {
      userCart.remove(shoe);
      notifyListeners();
  }
}
