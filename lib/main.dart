import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          body: Container(
            //blob bkdn
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
                image: Svg('images/blob.svg', size: Size(430, 430)),
                colorFilter: ColorFilter.mode(
                  Colors.black12,
                  BlendMode.srcIn,
                ),
              ),
            ),
            child: SafeArea(
              //Horizontal center
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, //Vertical center
                  children: <Widget>[
                    avatarImage(),
                    Text(
                      'John Doe',
                      style: GoogleFonts.pacifico(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Flutter Developer',
                      style: GoogleFonts.sourceCodePro(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2.5),
                    ),
                    SizedBox(
                      height: 20,
                      child: Divider(
                        color: Colors.grey[350],
                        height: 3,
                        indent: 185,
                        endIndent: 185,
                      ),
                    ),
                    Card(
                      elevation: 5,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone_android_rounded,
                          size: 30,
                          color: Colors.blueGrey,
                        ),
                        title: Text('+52 222 85 30 500',
                            style: GoogleFonts.sourceCodePro(
                              color: Colors.blueGrey,
                              fontSize: 25,
                            )),
                      ),
                    ),
                    Card(
                      elevation: 8,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                      child: ListTile(
                          leading: Icon(
                            Icons.email,
                            size: 30,
                            color: Colors.blueGrey,
                          ),
                          title: Text('doe@gmail.com',
                              style: GoogleFonts.sourceCodePro(
                                color: Colors.blueGrey,
                                fontSize: 25,
                              ))),
                    ),
                  ]),
            ),
          ),
        ));
  }

  Widget avatarImage() {
    return CircleAvatar(
      radius: 60,
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.7),
      child: CircleAvatar(
          radius: 55, backgroundImage: AssetImage('images/profile.jpg')
          //backgroundColor: Colors.transparent,
          ),
    );
  }
}

List<Widget> profilePhone() {
  return [
    Icon(
      Icons.phone_android_rounded,
      size: 40,
      color: Colors.blueGrey,
    ),
    //Spacing betwen icon phone and phone number
    SizedBox(
      width: 10,
    ),
    Text('+52 222 85 30 500',
        style: GoogleFonts.sourceCodePro(
          color: Colors.blueGrey,
          fontSize: 25,
        ))
  ];
}
