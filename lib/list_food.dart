import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListFood extends StatelessWidget {
  const ListFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 247, 1),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Daftar Kuliner di Indonesia",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 16),
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