import 'package:first/core/store.dart';
import 'package:first/models/cart.dart';
import 'package:first/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart; 
    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        AddMutation(catalog);
      },
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).cardColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
    );
  }
}
