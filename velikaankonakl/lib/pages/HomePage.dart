import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velikaankonakl/pages/BellPage.dart';
import 'package:velikaankonakl/pages/Favorite.dart';
import 'package:velikaankonakl/util/CoffeType.dart';
import 'package:velikaankonakl/util/coffe_tile.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List coffeeType = [
    ['Cappucino',
    true],
    ['Latte',
    false],
    ['Black',
    false],
    ['Milk',
    false],
  ];


  void CoffeeTypeSelected(int index){
    setState(() {
      for(int i=0; i<coffeeType.length; i++){
        coffeeType[i][1]= false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:  20.0),
            child: Icon(Icons.person),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),


        ],
      ),
      body: Column(
        children: [
          // en iyi kahveyi bul
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
                "Sizin için en iyi kahveyi bulun !",
                style: GoogleFonts.bebasNeue(
                  fontSize: 56,
                ),
            ),
          ),

          SizedBox(height: 25),
          //arama butonu
          Padding(
            padding: const EdgeInsets.symmetric( horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Kahvenizi bulun..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),

              ),
            ),
          ),


          SizedBox(height: 25),


          Container(
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {

              return CoffeeType(
                  coffeeType: coffeeType[index][0],
                  secim: coffeeType[index][1],
                  onTap: (){
                    CoffeeTypeSelected(index);
                  }
              );

          }),
          ),

          //yatay katalog
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeTile(
                  coffeeImagePath: 'lib/images/cappucino1.jpg',
                  coffeeName: 'Latte',
                  aciklama: 'Yumuşak içim enfes Latte',
                  coffeePrince: '4.20',
                  sayfa: 'LattePage()',
                ),
                CoffeTile(
                  coffeeImagePath: 'lib/images/cappucino.jpg',
                  coffeeName: 'Cappucino',
                  aciklama: 'Lezzetli kıvamında Cappucino',
                  coffeePrince: '4.10',
                  sayfa: 'Favorite()',
                ),
                CoffeTile(
                  coffeeImagePath: 'lib/images/milk.jpg',
                  coffeeName: 'Milk Coffe thing',
                  aciklama: 'Sütün ve kahvenin harmanı',
                  coffeePrince: '4.60',
                  sayfa: 'Favorite()',
                ),

              ],
            ),
          ),

        ],),
    );
  }
}
