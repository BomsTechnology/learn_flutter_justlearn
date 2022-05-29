import 'package:flutter/material.dart';
import 'package:just_learn/delay_animation.dart';
import 'package:just_learn/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0),
          leading: IconButton(
            icon: Icon(Icons.close, color: Colors.black, size: 30),
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
                    margin: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 30),
                    child: Column(
                      children: [
                        Text(
                          "Connect Email Adress",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                              color: d_blue,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 10),
                        Text(
                          textAlign: TextAlign.center,
                          "Save your progress to access your personnal training program",
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: 50),
              LoginForm(),
              DelayAnimation(
                  delay: 4500,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text('CONFIRM ',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                      style: ElevatedButton.styleFrom(
                        primary: d_blue,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.all(13),
                      ),
                      onPressed: () {},
                    ),
                  ))
            ],
          ),
        ));
  }
}

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          DelayAnimation(
            delay: 2500,
            child: TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.grey),
                labelText: 'Your Email',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          DelayAnimation(
            delay: 3500,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.grey),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.visibility,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )),
            ),
          )
        ],
      ),
    );
  }
}
