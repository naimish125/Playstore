import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playstore/Screen/TopCharts/Provider/Topchartprovider.dart';
import 'package:provider/provider.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _TopviewscreenState();
}

class _TopviewscreenState extends State<AppScreen> {
  TopchartsProvider? AT, AF;

  @override
  Widget build(BuildContext context) {
    AT = Provider.of<TopchartsProvider>(context, listen: true);
    AF = Provider.of<TopchartsProvider>(context, listen: false);
    return Scaffold(
      body: Container(
        height: 555,
        width: double.infinity,
        child: ListView.builder(scrollDirection: Axis.vertical,itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("${AF!.Num[index]}",style: GoogleFonts.lato(letterSpacing: 1,fontWeight: FontWeight.w600,color: Colors.black),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                   // child: Text("${index}.",style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.w600),),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("${AF!.gameImg1[index]}",fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Text("${AF!.gameName1[index]}",style: GoogleFonts.lato(letterSpacing: 1,fontWeight: FontWeight.w600,color: Colors.black),),
                        SizedBox(height: 5,),
                        Text("Top Free",style: GoogleFonts.lato(color: Colors.grey,fontSize: 10)),
                        SizedBox(height: 2,),
                        Row(children: [Text(" 4.1",style: GoogleFonts.lato(fontSize: 8,color: Colors.black),),SizedBox(width: 5,),Icon(Icons.star,color: Colors.black54,size: 10,)]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }, itemCount: AF!.gameImg1.length,
        )
      ),
    );
  }
}
