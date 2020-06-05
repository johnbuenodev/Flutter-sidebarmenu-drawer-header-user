import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String avatarStringLink = "https://avatars0.githubusercontent.com/u/22403749?s=400&u=d8264c2bd889344d7cabc79a237d17e2e60624e9&v=4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text(
         "SIDEBAR"
       ),
       backgroundColor: Colors.red,
     ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("john Bueno"),
              accountEmail: Text("johnbuenodev@gmail.com"),
              currentAccountPicture: GestureDetector(
                onTap: () => print("toque na img"),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(avatarStringLink),
                )
              ),
            ),
            ListTile(
              title: Text("Produtos",style: TextStyle(color: Colors.black54),),
              trailing: Icon(Icons.business_center),
            ),
            Divider(),
            ListTile(
              title: Text("Clientes",style: TextStyle(color: Colors.black54),),
              trailing: Icon(Icons.person),
            ),
            Divider(),
            ListTile(
              title: Text("Venda",style: TextStyle(color: Colors.black54),),
              trailing: Icon(Icons.add_shopping_cart),
            ),
            Divider(),
          ],
        )
      ),
      body: Center(
        child: Container(
          child: Text("Dashboard"),
        )
      ),
    );
  }
}
