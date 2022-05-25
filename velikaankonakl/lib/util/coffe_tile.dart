import 'package:flutter/material.dart';
import 'package:velikaankonakl/Coffees/LattePage.dart';

class CoffeTile extends StatelessWidget {

  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrince;
  final String aciklama;
  final String sayfa;

  CoffeTile({required this.coffeeImagePath, required this.coffeeName, required this.coffeePrince,
    required this.aciklama, required this.sayfa});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(12),
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black54,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                //kahve resim
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                    child: Image.asset(coffeeImagePath)
                ),
                // kahve yazı

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(coffeeName,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 4,
                      ),
                      Text(aciklama,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),

                //fiyat
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$' + coffeePrince),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(color: Colors.orange,
                        borderRadius: BorderRadius.circular(6)
                        ),
                          child: Icon(Icons.add)
                      ),
                    ],
                  ),
                ),

          ],
          ),
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => LattePage()));
        },
      ),

    );
  }
}
