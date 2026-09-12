import 'package:flutter/material.dart';
import 'package:practica1/models/cart.dart';
import 'package:practica1/models/vinyl.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Vinyl vinyl;
  CartItem({super.key, required this.vinyl});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove Item
  void removeItemFromCart(){
    Provider.of<Cart>(context, listen: false).removeItemToCart(widget.vinyl);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(9)
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.vinyl.imagePath),
        title: Text(widget.vinyl.title),
        subtitle: Text(widget.vinyl.price),
        trailing: IconButton(
          icon: Icon(Icons.delete), 
          onPressed: removeItemFromCart
        ),
    ));
  }
}