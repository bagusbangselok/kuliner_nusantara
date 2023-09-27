import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuliner_nusantara/list_food.dart';
import 'package:flutter/services.dart' as rootBundle;

import 'DaftarMakanan.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 247, 1),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text("Kuliner Nusantara",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  height: 112,
                  width: 320,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(52, 179, 241, 1),
                    shape:BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/illustration1.png",height: 85),
                      Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Aplikasi Daftar Kuliner Nusantara",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                                ),
                              ),
                              Text("Cek sekarang yuk !!!",
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Top 3 makanan Terfavorit",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        child: Text("Lihat daftar makanan",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                            fontWeight: FontWeight.w400,
                            textStyle: TextStyle(
                                decoration: TextDecoration.underline
                            )
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ListFood()),
                          );
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(height: 26),
              ],
            ),
            Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(
                              Radius.circular(8))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/Sate_Madura.jpeg", width: 92, height: 92,fit: BoxFit.cover,),
                          SizedBox(width: 10),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Sate Madura", style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star,color: Colors.amber,size: 20),
                                    Text("5/5", style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                    ),
                                    ),
                                  ],
                                ),
                                Text("Sate madura merupakan makanan khas madura "
                                    "yang mempunyai ciri khas tersendiri.",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10, fontWeight: FontWeight.w500
                                  ),)
                              ],
                            ),
                          )
                        ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<String> loadJsonData() async {
  return await rootBundle.rootBundle.loadString('assets/json/data_makanan.json');
}
Future<List<DaftarMakanan>> parseJsonData() async {
  String jsonString = await loadJsonData();
  final jsonData = json.decode(jsonString);
  List<DaftarMakanan> persons = [];
  for (var item in jsonData) {
    persons.add(DaftarMakanan.fromJson(item));
  }
  return persons;
}