// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors

import 'dart:convert';
import 'package:first/core/store.dart';
import 'package:first/models/cart.dart';
import 'package:first/utils/routes.dart';
import 'package:first/widgets/home_widgets/catalog_header.dart';
import 'package:first/widgets/home_widgets/catalog_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:first/models/catalog.dart';

class WlcmPage extends StatefulWidget {
  @override
  State<WlcmPage> createState() => _WlcmPageState();
}

class _WlcmPageState extends State<WlcmPage> {
  final url = "https://api.jsonbin.io/v3/b/62c654d04bccf21c2ed1ff8a";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");

    /*final response = await http.get(Uri.parse(url));
    final catalogJson = response.body;*/

    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items =
        List.from(productsData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        floatingActionButton: VxBuilder(
          mutations: {AddMutation, RemoveMutation},
          builder: (context, _, vxStatus) => FloatingActionButton(
            onPressed: () => {Navigator.pushNamed(context, MyRoutes.cartRoute)},
            backgroundColor: Theme.of(context).cardColor,
            child: Icon(
              CupertinoIcons.cart,
              color: Colors.white,
            ),
          ).badge(
              color: Colors.red,
              size: 20,
              count: _cart.items.length,
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        body: SafeArea(
            child: Container(
                padding: Vx.m16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CatalogHeader(),
                    if (CatalogModel.items.isNotEmpty)
                      CatalogList().py16().expand()
                    else
                      CircularProgressIndicator().centered().expand(),
                  ],
                ))));
  }
}
