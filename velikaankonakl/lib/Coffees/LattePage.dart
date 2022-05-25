import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LattePage extends StatelessWidget {
  const LattePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          //kahve resim
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset("lib/images/cappucino1.jpg")
          ),
          // kahve yazı

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Latte",
                      style: TextStyle(fontSize: 40,
                      fontWeight: FontWeight.bold),

                    ),
                    SizedBox(height: 4,
                    ),
                    Text("Yumuşak içim enfes Latte",
                      style: TextStyle(color: Colors.grey[700],
                      fontSize: 15,
                      ),
                    ),


                  Padding(
                    padding: const EdgeInsets.only( top: 10.0),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),

                          Text("4.5",
                            style: TextStyle(color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          Text("(6.154)",
                          style: TextStyle(color: Colors.grey[700],
                            fontSize: 15,
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0,),
                child: SizedBox(
                  height: 200,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Tanım", style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                        Text("Latte, İtalyanca'da Süt anlamına gelmektedir. Asıl adı Caffe Latte Machiatodur. Espresso, buharla ısıtılmış kıvamlı süt dolu bir kupaya eklenir. Genellikle ince ve uzun bardakta servis edilir. İsteğe göre üzerine süt köpüğü ve tatlı krema eklenir."),

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text("Boyut", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey[700]),),
                      ),

                        Padding(
                          padding: const EdgeInsets.only( left: 25.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  height: 35,
                                  width: 75,
                                  color: Colors.orange,
                                  child: Center(
                                    child: Text(
                                      "S"
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  height: 35,
                                  width: 75,
                                  color: Colors.grey,
                                  child: Center(
                                    child: Text(
                                        "M"
                                    ),
                                  ),
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  height: 35,
                                  width: 75,
                                  color: Colors.grey,
                                  child: Center(
                                    child: Text(
                                        "L"
                                    ),
                                  ),
                                ),
                              ),


                            ],
                          ),
                        ),

                      ],
                    ),
                  ),




                ),
              ),
            ),
          ),


          //fiyat
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [

                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$ 4.20',
                        style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(right: 25, left: 25, top: 11, bottom: 11),
                          decoration: BoxDecoration(color: Colors.orange,
                              borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("Şimdi Satın Al",
                          style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.bold,

                          ),

                          ),

                      ),
                    ],
                  ),
                  ],
                ),
              ),
            ),
          ),




        ],
      ),
    );
  }
}