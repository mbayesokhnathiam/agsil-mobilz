import 'package:ajiledakarv/common/color.dart';
import 'package:ajiledakarv/common/input.dart';
import 'package:ajiledakarv/models/activite_model.dart';
import 'package:ajiledakarv/screen/chat/chat.dart';
import 'package:ajiledakarv/screen/explorer/detail_city_explore.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
      
        onPressed: () {
          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatPage()));
      } , backgroundColor: primary, child: Image(image: AssetImage('assets/images/chat_icon.png')),),
      drawer: Drawer(
        child: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.close , size: 40, color: Color(0xff7B7B7B),),
               Divider(),
              TextButton(onPressed: () {}, child: Text('Mon Profil' , style: GoogleFonts.inter(color: Color(0xff7B7B7B) , fontSize: 20 ) ,)),
              Divider(),
              TextButton(onPressed: () {}, child: Text('Notifications' , style: GoogleFonts.inter(color: Color(0xff7B7B7B) , fontSize: 20 ) ,)),
               Divider(),
              TextButton(onPressed: () {}, child: Text('Paramètres' , style: GoogleFonts.inter(color: Color(0xff7B7B7B) , fontSize: 20 ) ,)),
               Divider(),
              TextButton(onPressed: () {}, child: Text('Besoin d’aide ?' , style: GoogleFonts.inter(color: Color(0xff7B7B7B) , fontSize: 20 ) ,)),
               Divider(),
              TextButton(onPressed: () {}, child: Text('Conditions d’ut.' , style: GoogleFonts.inter(color: Color(0xff7B7B7B) , fontSize: 20 ) ,)),
              ],
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: w * 0.16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100)),
                    child: CountryListPick(
                      appBar: AppBar(
                        backgroundColor: primary,
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
                          onPressed: () {
                          },
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        IconButton(
                          onPressed: () {

Scaffold.of(context).openDrawer() ;                         },
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Choisissez votre localité',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: InputSearchCustum(
                      Secondary,
                      'recherche activité',
                      'labetText',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.7,
                ),
                itemCount: activiteListe.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailCity()));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.only(
                                    bottomEnd: Radius.circular(8),
                                    bottomStart: Radius.circular(8)),
                                color: Colors.white,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffffffff),
                                    Color(0xffffffff)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                )),
                            child: Center(
                              child: Text(
                                activiteListe[index].name,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.orangeAccent),
                              ),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 186, 184, 184)
                                .withOpacity(0.5), //color of shadow
                            spreadRadius: 3, //spread radius
                            blurRadius: 4, // blur radius
                            offset: Offset(0, 2), // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                        ],
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                              activiteListe[index].imgUrl,
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
