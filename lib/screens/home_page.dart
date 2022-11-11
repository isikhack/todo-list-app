

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List _widgetoption=<Widget>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // _widgetoption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
           _selectedIndex = value;
          });
        },
        currentIndex:_selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),
          label: "Home",
          ),
          // BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded),
          // label: "Favorite",
          // ),
         BottomNavigationBarItem(icon: Icon(Icons.access_alarms),
          label: "TODO",
          ), 

        ],
        ),
      appBar: AppBar(
        centerTitle: true,
        title:Text('TODO LIST', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
        leading: IconButton(
icon: Icon(Icons.menu_outlined),
onPressed: () { },
),
actions: <Widget>[
IconButton(
icon: Icon(Icons.search),
onPressed: () {},
),
IconButton(
icon: Icon(Icons.more_vert),
onPressed: () {},
),
],
      ),
      body: 
       SafeArea(
        child:SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(20.0, 20.0, 25.0, 10.0),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(16.0)),
                TextFormField(
                  // keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    labelText: "Kindly type in your todo title here",
                  ),
                  
                ),
               Padding(padding: EdgeInsets.all(16.0)),
                TextFormField(
                  // keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    labelText: "Kindly type in your todo details here",
                  ),), 
                  Padding(padding: EdgeInsets.all(16.0)),
                  ElevatedButton(onPressed: (){
                    
                  }, child: const Text("ADD TODO")),
                  
              ],
            ),
          ),)),

    );
  }
}