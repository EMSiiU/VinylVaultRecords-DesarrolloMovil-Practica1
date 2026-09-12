import 'package:flutter/material.dart';
import 'package:practica1/models/vinyl.dart';

class Cart extends ChangeNotifier{
  //list of vinyls for sale
  List<Vinyl> vinylShop = [
    Vinyl(
      title: 'Random Access Memories',
      artist: 'Daft Punk',
      price: '850',
      description: 'Edición especial en vinil doble de 180 gramos.',
      imagePath: 'lib/images/daft-punk-random-access-memories-vinyl-2.png',
    ),
    Vinyl(
      title: 'The Dark Side of the Moon', 
      artist: 'Pink Floyd', 
      price: '920', 
      imagePath: 'lib/images/PinkFloyd_TheDarkSideOfTheMoon50thAnniversaryRemaster.png', 
      description: 'Prensado audiófilo remasterizado del clásico de 1973.'
    ),
    Vinyl(
      title: 'Currents', 
      artist: 'Tame Impala', 
      price: '780', 
      imagePath: 'lib/images/tame-impala-currents-lp.png', 
      description: 'Sonido psicodélico envolvente en vinil color ámbar.'
    ),
    Vinyl(
      title: 'Kind of Blue',
      artist: 'Miles Davis',
      price: '890',
      description: 'Grabación de referencia histórica para amantes del jazz.',
      imagePath: 'lib/images/DAVISMILES-KINDOFBLUE.png',
    ),
  ];
  // list of items in user cart
  List<Vinyl> userCart = [];

  // get list of vinyls for sale
  List<Vinyl> getVinylList(){
    return vinylShop;
  }

  // get list of items in user cart
  List<Vinyl> getUserCart(){
    return userCart;
  }

  // add items to cart
  void addItemToCart(Vinyl vinyl){
    userCart.add(vinyl);
    notifyListeners();
  }

  //remove items from cart
    void removeItemToCart(Vinyl vinyl){
    userCart.remove(vinyl);
    notifyListeners();
  }
}
