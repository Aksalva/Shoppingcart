// ignore_for_file: use_key_in_widget_constructors

import 'package:first/models/catalog.dart';
import 'package:first/widgets/wlcmdrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class WlcmPage extends StatefulWidget {
  @override
  State<WlcmPage> createState() => _WlcmPageState();
}

class _WlcmPageState extends State<WlcmPage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items =
        List.from(productsData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    child: GridTile(
                      child: Image.network(item.image),
                      header: Container(
                        child: Center(child: Text(item.name)),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.blue[400]),
                      ),
                      footer: Container(
                        child: Text(item.price.toString()),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.blue[800]),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blue[100],
                  );
                },
                itemCount: CatalogModel.items.length,
              )
            /* ListView.builder(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) => ItemWidget(
                  item: CatalogModel.items[index],
                ),
              ) */
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const WlcmDrawer(),
    );
  }
}
