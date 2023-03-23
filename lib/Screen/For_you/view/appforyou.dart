import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/App_Provider.dart';


class Foryouscreen extends StatefulWidget {
  const Foryouscreen({Key? key}) : super(key: key);

  @override
  State<Foryouscreen> createState() => _ForyouscreenState();
}

class _ForyouscreenState extends State<Foryouscreen> {
  App_provider? AT, AF;

  @override
  Widget build(BuildContext context) {
    AT = Provider.of<App_provider>(context, listen: true);
    AF = Provider.of<App_provider>(context, listen: false);
    return Scaffold(
      body: Container(
        height: 546,
        width: double.infinity,
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Text("Recommended for you", style: GoogleFonts.lato(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),),
                  Spacer(),
                  Icon(Icons.arrow_forward, color: Colors.black54, size: 20,),
                  SizedBox(width: 5,),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 170,
              width: double.infinity,
              child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'open');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 103,
                          width: 103,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                  "${AF!.gameImg1[index]}", fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("${AF!.gameName1[index]}",
                            style: GoogleFonts.lato(fontSize: 10,
                                color: Colors.black,
                                letterSpacing: 1),),
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(children: [
                            Text("4.1", style: GoogleFonts.lato(
                                fontSize: 8, color: Colors.black),),
                            SizedBox(width: 5,),
                            Icon(Icons.star, color: Colors.black54, size: 10,)
                          ]),
                        ),
                      ],
                    ),
                  ),
                );
              },
                itemCount: AF!.gameImg1.length,
              ),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Text("New & Updated apps", style: GoogleFonts.lato(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),),
                  Spacer(),
                  Icon(Icons.arrow_forward, color: Colors.black54, size: 20,),
                  SizedBox(width: 5,),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 170,
              width: double.infinity,
              child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'open');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 103,
                          width: 103,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                  "${AF!.gameImg2[index]}", fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("${AF!.gameName2[index]}",
                            style: GoogleFonts.lato(fontSize: 10,
                                color: Colors.black,
                                letterSpacing: 1),),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(children: [
                            Text("4.7", style: GoogleFonts.lato(
                                fontSize: 8, color: Colors.black),),
                            SizedBox(width: 5,),
                            Icon(Icons.star, color: Colors.black54, size: 10,)
                          ]),
                        ),
                      ],
                    ),
                  ),
                );
              },
                itemCount: AF!.gameImg2.length,
              ),

            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    height: 22,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 1.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text("Ads", style: GoogleFonts.lato(
                        color: Colors.green,
                        fontSize: 10,
                        fontWeight: FontWeight.w600),),
                  ),
                  SizedBox(width: 5,),
                  Text("Suggested for you", style: GoogleFonts.lato(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),),
                  Spacer(),
                  Icon(Icons.arrow_forward, color: Colors.black54, size: 20,),
                  SizedBox(width: 5,),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 170,
              width: double.infinity,
              child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'open');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(4),
                          height: 103,
                          width: 103,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                  "${AF!.gameImg3[index]}", fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("${AF!.gameName3[index]}",
                            style: GoogleFonts.lato(fontSize: 10,
                                color: Colors.black,
                                letterSpacing: 1),),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(children: [
                            Text("4.5", style: GoogleFonts.lato(
                                fontSize: 8, color: Colors.black),),
                            SizedBox(width: 5,),
                            Icon(Icons.star, color: Colors.black54, size: 10,)
                          ]),
                        ),
                      ],
                    ),
                  ),
                );
              },
                itemCount: AF!.gameImg3.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}