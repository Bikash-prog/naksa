import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naksa/constants/constant_colors.dart';
import 'package:naksa/data_models/directionDetails.dart';
import 'package:naksa/helpers/helperMethods.dart';



class DmResultPage extends StatefulWidget {

  static const id = 'distance_matrix_page';


  @override
  _DmResultPageState createState() => _DmResultPageState();
}


class _DmResultPageState extends State<DmResultPage> {
  DirectionDetails d1,d2,d3,d4,d5,d6,d7,d8,d9;
 @override
  void initState() {
   print('1111111111111111111111111111111111111111111111111111111111111111');
      getDetails();
   super.initState();
  }
  @override
  Widget build(BuildContext context) {
   print('Helooooooooooooooo');
    return SafeArea(
      child: Scaffold(
        backgroundColor: bodyWhiteColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 50,
              ),
              Column(

                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*.25,
                    child: Column(
                      children: [
                        Text(
                          'Gymkhana  - 25.259643° N, 82.988997° E',
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: bodyBlackColor,
                            ),
                          ),
                        ),
                        Text(
                          'Kashi Vishwanath - 25.3109° N, 83.0107° E',
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: bodyBlackColor,
                            ),
                          ),
                        ),
                        Text(
                          'Varanasi Cantt. - 25.3291° N, 82.9658° E',
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: bodyBlackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width*.20,
                          width: MediaQuery.of(context).size.width*.28,
                          color: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text(
                                  (d1 != null)?
                                  d1.distanceText: '0 ft',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: bodyBlackColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  (d1 != null)?
                                  d1.durationText: '0 min',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: bodyBlackColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width*.20,
                          width: MediaQuery.of(context).size.width*.28,
                          color: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text(
                                  (d2 != null)?
                                  d2.distanceText: '0 mi',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: bodyBlackColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  (d2 != null)?
                                  d2.durationText: '0 min',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: bodyBlackColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width*.20,
                          width: MediaQuery.of(context).size.width*.28,
                          color: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text(
                                  (d3 != null)?
                                  d3.distanceText: '0 mi',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: bodyBlackColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  (d3 != null)?
                                  d3.durationText: '0 mins',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: bodyBlackColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width*.20,
                        width: MediaQuery.of(context).size.width*.28,
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                (d4 != null)?
                                d4.distanceText: '0 mi',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: bodyBlackColor,
                                  ),
                                ),
                              ),
                              Text(
                                (d4 != null)?
                                d4.durationText: '0 mins',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: bodyBlackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width*.20,
                        width: MediaQuery.of(context).size.width*.28,
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                (d5 != null)?
                                d5.distanceText: '0 ft',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: bodyBlackColor,
                                  ),
                                ),
                              ),
                              Text(
                                (d5 != null)?
                                d5.durationText: '0 min',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: bodyBlackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width*.20,
                        width: MediaQuery.of(context).size.width*.28,
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                (d6 != null)?
                                d6.distanceText: '0 mi',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: bodyBlackColor,
                                  ),
                                ),
                              ),
                              Text(
                                (d6 != null)?
                                d6.durationText: '0 mins',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: bodyBlackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width*.20,
                        width: MediaQuery.of(context).size.width*.28,
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                (d7 != null)?
                                d7.distanceText: '0 mi',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: bodyBlackColor,
                                  ),
                                ),
                              ),
                              Text(
                                (d7 != null)?
                                d7.durationText: '0 mins',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: bodyBlackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width*.20,
                        width: MediaQuery.of(context).size.width*.28,
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                (d8 != null)?
                                d8.distanceText: '0 mi',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: bodyBlackColor,
                                  ),
                                ),
                              ),
                              Text(
                                (d8 != null)?
                                d8.durationText: '0 mins',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: bodyBlackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width*.20,
                        width: MediaQuery.of(context).size.width*.28,
                        color: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Text(
                                (d9 != null)?
                                d9.distanceText: '0 ft',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: bodyBlackColor,
                                  ),
                                ),
                              ),
                              Text(
                                (d9 != null)?
                                d9.durationText: '0 min',
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: bodyBlackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getDetails() async
  {

    print('222222222222222222222222222222222222222222');
    var thisDetails = await HelperMethods.getDmDetails();
    setState(()  {
      print('222222222222222222222222222222222222222222');

      // d2 = thisDetails;
      // print(d2.distanceText);
      // print(d2.durationText);

      d2= thisDetails[0];

      d3 = thisDetails[1];

      d4= thisDetails[3];

      d6 = thisDetails[2];

      d7 = thisDetails[4];
      d8 = thisDetails[5];

    });
  }


}
