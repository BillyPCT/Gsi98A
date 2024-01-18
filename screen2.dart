import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


var kuning=Color(0xFFf4bf47);
var hijau=Color.fromARGB(255, 111, 255, 0);
var merah=Color.fromARGB(255, 255, 0, 0);
var biru=Color.fromARGB(255, 0, 204, 255);
var coklat=Color.fromARGB(255, 186, 120, 6);
var orange=Color.fromARGB(255, 255, 213, 0);
var tulisan="Ini adalah halaman 2";
var panjang=" hello world";
var gambar='https://assets.ladiestory.id/user/5595/article/1633066662-ngaku-pecinta-hewan-kucing-sudah-tahukah-9-fakta-kucing-ini.webp';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Myactionbutton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Mynavbar(),
      body: Container(
        child:ListView(
          children: [
SizedBox(height: 16.0,),
MyAppbar(),
SizedBox(height: 16.0,),
foodlistview(),
selectypesection(),
menuitemlist(),
          ],
          ), 
          ),
    );
  }
}

class Myactionbutton extends StatelessWidget {
  const Myactionbutton ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: ClipPolygon(
        sides: 6,child: Container(
          color: kuning,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.book),
              SizedBox(height: 4.0,),
              Text("Menu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
      ],
      ),
      ),),
    );
  }
}
class Mynavbar extends StatelessWidget {
  const Mynavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 60.0,
      child: Padding(padding:EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Column(
          children: [
            Icon(Icons.home),
            Text("home",style: TextStyle(fontSize: 12.0),
            ),
          ],
        ),
         Column(
          children: [
            Icon(Icons.search),
            Text("search",style: TextStyle(fontSize: 12.0),
            ),
          ],
        ),
        Container(width: 100.0,),
        Column(
          children: [
            Icon(Icons.home),
            Text("home",style: TextStyle(fontSize: 12.0),
            ),
          ],
        ),
         Column(
          children: [
            Icon(Icons.search),
            Text("search",style: TextStyle(fontSize: 12.0),
            ),
          ],
        ),
      ]),
      ),

    );
  }
}
class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: EdgeInsets.symmetric(horizontal: 8.0

      ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
Icon(Icons.grid_on,
color: hijau,

),
Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Text(
      "Location",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0,),
    ),
    Text(
      "Sumatera Selatan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0),
    ),
  ],
),
    ]),
    );
  }
}
class foodlistview extends StatelessWidget {
  const foodlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 8.0),
    child: Container(
    
      height: 160.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          carditem(),
          carditem(),
          carditem(),
          carditem(),
          carditem(),
          carditem(),
          carditem(),
          carditem(),
          carditem(),


      ]),
    ),
    );
  }
}

class carditem extends StatelessWidget {
  const carditem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: Container(
        height:160,
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(gambar),fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              height: 160,
              width: 300,
              decoration: BoxDecoration(gradient: LinearGradient(
              colors:[ Colors.black.withOpacity(0.1),Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              ),
              ),
            ),
            Padding(padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text("30% off",style: TextStyle(
                  fontSize: 24.0,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 1.1
                  ),),
                  Text("Kucing Persia",style: TextStyle(
                  fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 1.1
                  ),),
              ],
            ),
  
            ),
          ],
        ),
      ),
    );
  }
}

class selectypesection extends StatelessWidget {
  const selectypesection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
Expanded(child: Container(
  height: 90.0,
  width: 120.0,
  color: hijau,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
Icon(FontAwesomeIcons.star,color:merah),
SizedBox(height: 4.0,),
Text("Special Menu"),

  ]
  ),
),

),
Container(
  height: 90.0,
  width: 120.0,
  color: hijau,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
Icon(FontAwesomeIcons.star,color:merah),
SizedBox(height: 4.0,),
Text("Special Menu"),

  ]
  ),
),

      ],
    ),
    );
  }
}
class menuitemlist extends StatelessWidget {
  const menuitemlist({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
