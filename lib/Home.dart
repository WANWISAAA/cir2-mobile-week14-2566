import 'package:flutter/material.dart';
import 'package:flutter_week14/main.dart';
import 'package:flutter_week14/widgets/card_demo.dart';
import 'package:flutter_week14/widgets/column_page.dart';
import 'package:flutter_week14/widgets/list_viwe_menu.dart';
import 'package:flutter_week14/widgets/my_card.dart';
import 'package:flutter_week14/widgets/row_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Elon Musk"),
              accountEmail: Text("elon@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home Page'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
                debugPrint("Home Page");
              },
            ),
            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text('Row'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowPage(),
                  ),
                );
                debugPrint("Row");
              },
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text('Column'),
              onTap: () async{
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnPage(),
                  ),
                );
                debugPrint("Column");
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('List Viwe Widget'),
              onTap: () async{
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListViweMenu(),
                  ),
                );
                debugPrint("List Viwe Widget");
              },
            ),
            ListTile(
              leading: const Icon(Icons.abc_sharp),
              title: const Text('Dart Viwe and Inkwell Widget'),
              onTap: () async{
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardDemo(),
                  ),
                );
                debugPrint("Dart Viwe and Inkwell Widget");
              },
            ),
            ListTile(
              leading: const Icon(Icons.merge_type),
              title: const Text('My Card'),
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyCard(),
                  ),
                );
                debugPrint("Home Page");
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("MyApp"),
      ),
    );
  }
}
