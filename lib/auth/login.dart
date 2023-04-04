import 'package:ajiledakarv/auth/register.dart';
import 'package:ajiledakarv/bottom_navigation_bar.dart';
import 'package:ajiledakarv/common/color.dart';
import 'package:ajiledakarv/common/input.dart';
import 'package:ajiledakarv/screen/explorer/explore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
     var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 30),
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: null, child: Text('Se connecter' , style: GoogleFonts.inter(
                    fontSize: 14,
                  ),)),
                  TextButton(onPressed: null, child: Text('Passer' ,  style: GoogleFonts.inter(
                    fontSize: 14,
                  ),),),
                ],
              ),
              Container(
                
                margin: EdgeInsets.symmetric(vertical: w * 0.14),
              
                child:
                    Image(image: AssetImage('assets/images/logo-agil.png')),
              ),
              Form(
                child: Column(
                  children: [
                    const CustomInput(
                      isPassword: false,
                      labelText: 'email',
                      hintText: 'email',
                    ),
                    SizedBox(
                      height: w * 0.06,
                    ),
                    CustomInput(
                        isPassword: true,
                        hintText: "password",
                        labelText: 'password'),
                     SizedBox(
                      height: w * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text('Mot de passe oublié' ))
                      ],
                    ),
                    SizedBox(height: 48),
                    GestureDetector(
                      onTap: () =>  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => bnv())),
                      child: Container(
                       width: w * 0.7,
                       
  height: 45,                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: primary,
                        ),
                        child: Center(
                          child: Text(
                            'Connexion',
                            style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: w * 0.04,
                    ),
                    Text('ou se connecter avec : ' , style: GoogleFonts.inder( fontWeight: FontWeight.w300),),
                     SizedBox(
                      height: w * 0.05 ,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 56, 56, 56),
                                blurRadius: 4,
                                offset: Offset(0.3, 2), // Shadow position
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                       SizedBox(
                      width: w * 0.05 ,
                    ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 56, 56, 56),
                                blurRadius: 4,
                                offset: Offset(0.3, 2), // Shadow position
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ],
                    ),
                   SizedBox(
                      height: w * 0.05 ,
                    ),
                    Text("je n'ai pas encor de compte !"),
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                                            onTap: () =>  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Register())),

                      child: Container(
                        width: w * 0.7,
                         height: 45,  
                         decoration: BoxDecoration(
                          border: Border.all(color: Colors.orangeAccent),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Inscription',
                            style: TextStyle(
                                color: primary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}