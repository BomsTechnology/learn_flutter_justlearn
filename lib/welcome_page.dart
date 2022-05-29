import 'package:flutter/material.dart';
import 'package:just_learn/delay_animation.dart';
import 'package:just_learn/main.dart';
import 'package:just_learn/social_page.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
            child: Column(
              children: [
                DelayAnimation(
                    delay: 1500,
                    child: Container(
                      height: 400,
                      child: Image.asset('images/logo2.png'),
                    )),
                DelayAnimation(
                    delay: 2500,
                    child: Text(
                        'Just learn, la méthode la plus facile pour apprendre les langues étrangères et l\'informatique ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: 18))),
                DelayAnimation(
                    delay: 3500,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 60),
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text('GET STARTED',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        style: ElevatedButton.styleFrom(
                          primary: d_blue,
                          shape: StadiumBorder(),
                          padding: EdgeInsets.all(13),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SocialPage()));
                        },
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
