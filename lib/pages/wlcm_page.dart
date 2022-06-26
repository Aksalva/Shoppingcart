import 'package:first/models/catalog.dart';
import 'package:first/widgets/item_widget.dart';
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
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items =
        List.from(productsData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) => ItemWidget(
                  item: CatalogModel.items[index],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: WlcmDrawer(),
    );
  }
}
