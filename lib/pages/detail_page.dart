// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors

import 'package:first/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailPage extends StatelessWidget {
  final Item catalog;

  const DetailPage({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      bottomNavigationBar: VxArc(
        height: 30,
        arcType: VxArcType.CONVEX,
        edge: VxEdge.TOP,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.fromLTRB(0, 0, 16, 0),
          children: [
            "\$${catalog.price}".text.bold.xl3.make().px8(),
            ElevatedButton(
              onPressed: () => {},
              child: "Add To Cart".text.make(),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(context.cardColor),
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
            ).wh(130, 50)
          ],
        ).p16(),
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
          bottom: false,
          child: Column(children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .p16()
                .h32(context),
            Expanded(
                child: VxArc(
              height: 25,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Theme.of(context).selectedRowColor,
                width: context.screenWidth,
                child: Column(children: [
                  catalog.name.text.bold.xl4.center.make().p8(),
                  catalog.desc.text.xl2.textStyle(context.captionStyle).make(),
                  "Lorem diam ipsum labore sit amet ipsum elitr ut. Accusam invidunt est tempor sed voluptua elitr rebum amet. Dolores dolor dolor at sit, kasd erat gubergren et takimata, clita vero."
                      .text
                      .xl
                      .textStyle(context.captionStyle)
                      .make()
                      .p8()
                ]).py16(),
              ),
            ))
          ])),
    );
  }
}
