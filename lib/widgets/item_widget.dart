import 'package:first/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
        elevation: 3.0,
        child: ListTile(
          onTap: () => {print("${item.name} pressed")},
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price}",
            style: TextStyle(
              color: Color(0xFF191CD2),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
