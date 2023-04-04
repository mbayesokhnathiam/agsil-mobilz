import 'package:ajiledakarv/common/color.dart';
import 'package:ajiledakarv/common/input.dart';
import 'package:ajiledakarv/models/activite_model.dart';
import 'package:ajiledakarv/models/deplacement_model.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

class Deplacement extends StatelessWidget {
  const Deplacement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                                onPressed: () {},
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
              child: InputSearchCustum(
                Secondary,
                'recherche activité',
                'labetText',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.7,
                ),
                itemCount: DeplacementListe.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailCoutry(activite: HomeController().activiteListe[index])));
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
                                color:                                      Color(0xff64625F),
                                gradient: LinearGradient(
                                  colors: [
                                     Color(0xff64625F),
                                    Color(0xff64625F)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                )),
                            child: Center(
                              child: Text(
                                DeplacementListe[index].name,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
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
                            offset: Offset(0, 2),
                          ),
                        ],
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                              DeplacementListe[index].imgUrl,
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
