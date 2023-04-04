import 'package:ajiledakarv/common/color.dart';
import 'package:ajiledakarv/models/activite_model.dart';
import 'package:ajiledakarv/screen/explorer/detail_city_explore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreDetail extends StatefulWidget {
  ExploreDetail({super.key});

  @override
  State<ExploreDetail> createState() => _ExploreDetailState();
}

class _ExploreDetailState extends State<ExploreDetail> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailCity()));
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  )
                ],
              ),
              height: h / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage('assets/images/Rectangle.jpg'),
                      fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.event,
                              color: primary,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Soirée Live')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: primary,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Soirée Live')
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('Notez-ici'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: primary,
                            ),
                            Icon(
                              Icons.star_border_outlined,
                              color: primary,
                            ),
                            Icon(
                              Icons.star_border_outlined,
                              color: primary,
                            ),
                            Icon(
                              Icons.star_border_outlined,
                              color: primary,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique et purus dui neque lectus a, varius sed pretium. Id cursus libero purus molestie ultrices quis dui. Felis pellentesque sem sed sollicitudin malesuada. Lacus eget et lorem sagittis, purus consequat amet, quam. Cras quam tortor sagittis amet facilisi sed. At aliquam, leo nunc pulvinar ac sodales massa in fringilla. ',
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.mail,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('exemple@gmail.com')
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('695  vue')
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('777222025')
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.sell,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('5.000 FCFA')
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Icon(
                        Icons.restaurant_menu,
                        color: primary,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Resto',
                      style: GoogleFonts.inter(
                          color: primary, fontWeight: FontWeight.bold),
                    )
                  ]),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Icon(
                        Icons.wifi,
                        color: primary,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'wifi',
                      style: GoogleFonts.inter(
                          color: primary, fontWeight: FontWeight.bold),
                    )
                  ]),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Icon(
                        Icons.local_bar,
                        color: primary,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'bar',
                      style: GoogleFonts.inter(
                          color: primary, fontWeight: FontWeight.bold),
                    )
                  ]),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Icon(
                        Icons.tv,
                        color: primary,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'tv',
                      style: GoogleFonts.inter(
                          color: primary, fontWeight: FontWeight.bold),
                    )
                  ]),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Icon(
                        Icons.menu_book,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'livre',
                      style: GoogleFonts.inter(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )
                  ]),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Icon(
                        Icons.restaurant_menu,
                        color: primary,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Resto',
                      style: GoogleFonts.inter(
                          color: primary, fontWeight: FontWeight.bold),
                    )
                  ]),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Icon(
                        Icons.restaurant_menu,
                        color: primary,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Resto',
                      style: GoogleFonts.inter(
                          color: primary, fontWeight: FontWeight.bold),
                    )
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
