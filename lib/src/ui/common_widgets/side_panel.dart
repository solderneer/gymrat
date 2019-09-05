import "package:flutter/material.dart";

class SidePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      ListTile(
        leading: Icon(Icons.shopping_cart),
        title: Text('Checkout'),
        onTap: () {
          Navigator.pushNamed(context, '/home');
        },
      ),
      ListTile(
        leading: Icon(Icons.report),
        title: Text('Transactions'),
        onTap: () {
          Navigator.pushNamed(context, '/transactionsList');
        },
      ),
    ]));
  }
}
