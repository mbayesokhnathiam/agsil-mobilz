import 'package:ajiledakarv/common/color.dart';
import 'package:ajiledakarv/common/input.dart';
import 'package:ajiledakarv/models/activite_model.dart';
import 'package:ajiledakarv/models/evenement_modelL.dart';
import 'package:ajiledakarv/screen/explorer/explore_detail.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCity extends StatefulWidget {
  const DetailCity({super.key});

  @override
  State<DetailCity> createState() => _DetailCityState();
}

class _DetailCityState extends State<DetailCity> {
  List filter = [
    'Recent',
    'Sourée live',
    'Cinéma',
    'Explore/theatre',
    'Plat et brunchs'
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_back_ios)),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/casa.jpeg'),
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
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Evens.map(
                  (e) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(100)),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image: AssetImage(e.imgUrl),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          e.name,
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ).toList(),
              ),
            ),
            SizedBox(
              height: 20,
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
            SizedBox(
              height: 30,
              width: double.infinity,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: filter.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(microseconds: 300),
                        child: Center(
                            child: Text(
                          filter[index],
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: current == index ? Colors.white : Colors.black
                          ),
                        )),
                        margin: EdgeInsets.only(left: 5),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: current == index ? primary : Secondary,
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.7,
                ),
                itemCount: Evens.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExploreDetail()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(3),
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
                                      const Color(0xffffffff),
                                      Color(0xffffffff)
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 30,
                                    width:
                                        MediaQuery.of(context).size.width / 20,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/icond.png'),
                                    )),
                                  ),
                                  Text(
                                    Evens[index].name,
                                    style: GoogleFonts.inter(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                    color: Colors.black,
                                  )
                                ],
                              ))
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
                              Evens[index].imgUrl,
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}









