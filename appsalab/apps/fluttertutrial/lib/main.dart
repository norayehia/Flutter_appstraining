import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar:
        //a
        AppBar(title: Text('hello'),
//b
          centerTitle: true,
          //c
          backgroundColor: Colors.yellow,
          //d
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings))
          ],
          //e
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft:Radius.circular(20) )),

        ),
        //2
        drawer: Drawer(
          child: ListView(
            //take group of items
            children: [
              ListTile(title: Text('1'),),
              ListTile(title: Text('2'),),
              ListTile(title: Text('3'),)
            ],
          ),
        ),





        body: Column(
          children: [

            //1image
            Center(
              child: Image.asset('assets/nor.png'),
            ),//
            //2 buttons

            Center(
//2
              child: TextButton(
                child: Text('click me'),
                onPressed: (){
                  print('clicked now');
                },
              ),
            ),
            Center(
//3
              child: ElevatedButton(
                child: Text('click me'),
                onPressed: (){
                  print('clicked now');
                },
              ),
            ),
            Center(
//4
              child: IconButton(
                //child: Text('click me'),
                icon: Icon(Icons.face_retouching_natural)
                ,
                onPressed: (){
                  print('clicked now');
                },
              ),
            ),
            Center(
//5
              child: InkWell(
                //child: Text('click me'),
                child: Icon(Icons.analytics),
                onTap: (){
                  print('clicked now');
                },
              ),
            ),],),












        //4
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.add),
          onPressed: (){
            print('hi nnn');
          },
          backgroundColor: Colors.amberAccent,
        ),

        //5
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.green,
          //postion0
          currentIndex: 0,
          //group of items butons
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list),
                label: 'list'),
            BottomNavigationBarItem(icon:Icon(Icons.home),label: 'home' ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'setting')
          ],
        ),


      ),
    );
  }
}












class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, World!',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
