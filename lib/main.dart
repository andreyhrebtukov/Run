

import 'package:flutter/material.dart';
import 'domain/listHome.dart';




void main()=>runApp(Sport());


class Sport extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Поиск напарника",
      theme: ThemeData(
        primaryColor: Color.fromRGBO(50, 65, 85, 1),
        textTheme: TextTheme(title: TextStyle(color: Colors.white))
      ),
      home: HomePage(),
    );
  } 
}
  
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(title:Text("Найди напарника"),),
        body: homeListPage(),
        drawer: Drawer(
          child:  ListView(
            children: <Widget>[
               DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ],
          ),
        ),
      ),
    );
  }
}

class homeListPage extends StatelessWidget {

  final house = <listhomePage>[
    listhomePage(name: 'Бег', img: '/lid/image/13cccb779bcb89519dade014f259d4d7.png'),
    listhomePage(name: 'Вело',img: 'image/13cccb779bcb89519dade014f259d4d7.png'),
    listhomePage(name: 'Фитнес',img:  'image/13cccb779bcb89519dade014f259d4d7.png'),
    listhomePage(name: 'Прогулка', img: 'image/13cccb779bcb89519dade014f259d4d7.png'),
    listhomePage(name: 'Самокат',img: 'image/13cccb779bcb89519dade014f259d4d7.png'),
    listhomePage(name: 'Йога',img: 'image/13cccb779bcb89519dade014f259d4d7.png'),
    listhomePage(name: 'Ролики',img: 'image/13cccb779bcb89519dade014f259d4d7.png'),
    listhomePage(name: 'Плаванье',img: 'image/13cccb779bcb89519dade014f259d4d7.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: List.generate(house.length, (index) {
            return Card(child: 
            GridTile(
              footer: Center(child: Text(house[index].name, style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0))),
              child: Container(
                child: Image.asset('samokat.png', height: 150,) ,
                height: 150,    
              ),
            )
          );}
           ),),
    ));
  }
}

