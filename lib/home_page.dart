import 'package:doctolib/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  static String id = 'homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: BrandColors.doctorBlue,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 30,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.transparent,
                    ),
                    Image(
                      image: AssetImage('assets/logo.png'),
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: EdgeInsets.only(top: 30, bottom: 20),
                height: 100,child: Column(
                
              ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: BrandColors.lightGreen,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.info_outlined,
                          color: BrandColors.darkGreen,
                          size: 15,
                        ),
                        Text(
                          '  Information',
                          style: TextStyle(
                              color: BrandColors.darkGreen,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    padding: EdgeInsets.only(top:20, right: 20, left: 20),
                    child: Column(
                      children: <Widget>[
                        Row(crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.syringe, color: Color(0xff4a90a9),size: 13,),
                            Expanded(child: Text('   Vaccination: book an appointment online', style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.w700),softWrap: true,maxLines: 2,)),

                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
