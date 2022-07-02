// ignore_for_file: prefer_const_constructors

import 'package:first/models/catalog.dart';
import 'package:first/pages/detail_page.dart';
import 'package:first/widgets/home_widgets/catalog_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => DetailPage(catalog: catalog)))),
            child: CatalogItem(catalog: catalog),
          );
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  })  : super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.bold.xl.make(),
            SizedBox(height: 5),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            SizedBox(height: 10),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.fromLTRB(0, 0, 16, 0),
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                  onPressed: () {},
                  child: "Add To Cart".text.make(),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).cardColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                )
              ],
            )
          ],
        ))
      ],
    ))
        .color(Theme.of(context).selectedRowColor)
        .roundedSM
        .square(150)
        .make()
        .py16();
  }
}
