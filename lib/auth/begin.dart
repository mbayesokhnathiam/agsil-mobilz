import 'package:ajiledakarv/auth/login.dart';
import 'package:ajiledakarv/common/color.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class begin extends StatelessWidget {
  const begin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
     var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: w * 0.14),
              
                child:
                    Image(image: AssetImage('assets/images/logo-agil.png')),
                ),
                Form(
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(100),
                            ),
                        child: CountryListPick(



                          appBar: AppBar(
                            backgroundColor: Colors.orangeAccent,
                            title: Text('Choisir un pays'),
                          ),
                          theme: CountryTheme(
                            isShowFlag: true,
                            isShowTitle: true,
                            isShowCode: false,
                            isDownIcon: true,
                            showEnglishName: true,
                          ),
                          //
                          initialSelection: 'sn',
                          useSafeArea: true,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 45, 0, 8),
                        child: Text(
                          'Choisissez votre pays!',
                          style:GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        child: Text(
                          'lorem ipsulm lorme e lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      ),
                      SizedBox(
                       height: h * .052,
                      ),
                    GestureDetector(
                      onTap: () =>    Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login())),
                      child: Container(
                       width: w * 0.7,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orangeAccent,
                        ),
                        child: Center(
                          child: Text(
                            'Connexion',
                            style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "j'ai deja un compte :",
                              style:GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                               Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()));
                                  
                              },
                              child: Text('me connecter !',
                                  style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: primary
                              ),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
