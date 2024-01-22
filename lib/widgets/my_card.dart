import 'package:flutter/material.dart';

class Menu {
  final String? title;
  final IconData? icon;
  final Color? bkColor;
  const Menu({this.title,this.icon,this.bkColor});
}

List<Menu> menu = [
  const Menu(title: 'Menu-1',icon: Icons.person, bkColor: Colors.orange),
  const Menu(title: 'Menu-2',icon: Icons.person_add, bkColor: Colors.red),
  const Menu(title: 'Menu-3',icon: Icons.person_2_sharp, bkColor: Colors.green),
  const Menu(title: 'Menu-4',icon: Icons.person_add_disabled, bkColor: Colors.blue)
];

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("My Card"),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(menu.length, (index) {
            return Card(
              color: menu[index].bkColor,
              margin: const EdgeInsets.all(12),
              child: InkWell(
                onTap: () {
                  debugPrint('MYCARD-1');
                },
                child:  Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(menu[index].icon, size: 40, color: Colors.white),
                      Text('${menu[index].title}',style: TextStyle(fontSize: 15.0,color: Colors.black)),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
