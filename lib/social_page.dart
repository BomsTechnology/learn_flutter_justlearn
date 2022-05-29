import 'package:flutter/material.dart';
import 'package:just_learn/delay_animation.dart';
import 'package:just_learn/main.dart';
import 'package:just_learn/login_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DelayAnimation(
                delay: 1500,
                child: Container(
                  child: Image.asset('images/logo1.png'),
                  height: 280,
                )),
            DelayAnimation(
                delay: 1500,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        "Change  starts here",
                        style: GoogleFonts.poppins(
                            color: d_blue,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 10),
                      Text(
                        textAlign: TextAlign.center,
                        "Save your progress to access your personnal training program",
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                )),
            DelayAnimation(
                delay: 3500,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF576dff),
                              shape: StadiumBorder(),
                              padding: EdgeInsets.all(13)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.mail_outline_outlined),
                              SizedBox(width: 10),
                              Text(
                                'EMAIL',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )),
                      SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: d_blue,
                              shape: StadiumBorder(),
                              padding: EdgeInsets.all(13)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.facebook),
                              SizedBox(width: 10),
                              Text(
                                'FACEBOOK',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )),
                      SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: StadiumBorder(),
                              padding: EdgeInsets.all(13)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/google.png',
                                height: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'GOOGLE',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
