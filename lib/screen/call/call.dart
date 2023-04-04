import 'package:ajiledakarv/common/color.dart';
import 'package:ajiledakarv/common/input.dart';
import 'package:ajiledakarv/models/call_model.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumeroUtil extends StatelessWidget {
  const NumeroUtil({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
     
      body: Container(
          padding:  EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: IconButton(
                                onPressed: () {
                                  
                                },
                                icon: Icon(Icons.arrow_back_ios)),
                          ),
                          Container(
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/casa.jpeg'),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('profil name'),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo-agil.png'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
             
              SizedBox(
                height: 10,
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:                                                     InputSearchCustum(Secondary, 'recherche activité', 'labetText' ,  ),

              
              ),
                SizedBox(
                height: 20,
              ),


             Expanded(
               child: SingleChildScrollView(
                 child: Column(
                  children: call.map((e) => Container(
                    padding: EdgeInsets.only(right: 10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xff64625F),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                      Container(
                        width: w /3,
                        height: double.infinity,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft : Radius.circular(20),
                          )
                        ),
                        child: Container(
                          width: w/3,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                           
                            ),
                            image: DecorationImage(image: AssetImage(e.imgUrl , ) ,
                            fit: BoxFit.cover
                            )
                          ),
                        )
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(e.name ,  style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(e.Num.toString() , style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),)
                        ],
                      ),
                      Icon(Icons.call , size:28, color: Colors.white,)

                    ]),
                  ),).toList(),
                 ),
               ),
             ) 
             
            ],
          ),
        ),
    );
  }
}