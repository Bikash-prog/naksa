// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:naksa/constants/constant_colors.dart';
// import 'package:naksa/constants/global_variables.dart';
// import 'package:naksa/data_models/prediction.dart';
// import 'package:naksa/data_provider/appdata.dart';
// import 'package:naksa/helpers/requestHelper.dart';
// import 'package:naksa/supporter/dm_prediction_tile.dart';
// import 'package:provider/provider.dart';
// import 'distanceMatrixResultPage.dart';
//
// class DistanceMatrixPage extends StatefulWidget {
//   static const id = 'distance_matrix_page';
//
//   @override
//   _DistanceMatrixPageState createState() => _DistanceMatrixPageState();
// }
//
// class _DistanceMatrixPageState extends State<DistanceMatrixPage> {
// // custom Text Field to take inputs
//   Widget _textFieldFormat({
//     TextEditingController controller,
//     String label,
//     String hint,
//     Icon prefixIcon,
//     String initialValue,
//     Function(String) locationCallback,
//   }) {
//     return Container(
//       child: TextField(
//         controller: controller,
//         onChanged: locationCallback,
//         decoration: InputDecoration(
//           prefixIcon: prefixIcon,
//           labelText: label,
//           labelStyle: TextStyle(color: Color(0xff5b5b5b)),
//           hintText: hint,
//           hintStyle: TextStyle(color: Color(0xff5b5b5b)),
//           fillColor: Color(0xffcdd0cb),
//           filled: true,
//           border: InputBorder.none,
//           contentPadding: EdgeInsets.only(left: 10, top: 8, bottom: 8),
//         ),
//       ),
//     );
//   }
// // On clicking calculate this dialog box will shown up with the places data
//   // distance and time from place A to B , place A to C and place B to C
//   // _showFormInDialog(BuildContext context) {
//   //   return showDialog(
//   //       context: context,
//   //       barrierDismissible: true,
//   //       builder: (param) {
//   //         return Dialog(
//   //           backgroundColor: bodyBlackColor,
//   //           shape: RoundedRectangleBorder(
//   //               borderRadius: BorderRadius.circular(20.0)), //this right here
//   //           child: Container(
//   //             height: MediaQuery.of(context).size.height ,
//   //             width: MediaQuery.of(context).size.width,
//   //             child: Padding(
//   //               padding: const EdgeInsets.all(12.0),
//   //               child: Column(
//   //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                 crossAxisAlignment: CrossAxisAlignment.center,
//   //                 children: [
//   //                   SizedBox(
//   //                     height: 10,
//   //                   ),
//   //                   Column(
//   //                     children: [
//   //                       Row(
//   //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //                         children: [
//   //                          Container(
//   //                            color: Colors.white,
//   //                            height: MediaQuery.of(context).size.height*.3,
//   //                            width: MediaQuery.of(context).size.width*.3,
//   //                          ),
//   //                           SizedBox(width: 5,),
//   //                           Container(
//   //                             color: Colors.white,
//   //                             height: MediaQuery.of(context).size.height*.3,
//   //                             width: MediaQuery.of(context).size.width*.3,
//   //                           ),
//   //
//   //                           SizedBox(width: 5,),
//   //                           Container(
//   //                             color: Colors.white,
//   //                             height: MediaQuery.of(context).size.height*.3,
//   //                             width: MediaQuery.of(context).size.width*.3,
//   //                           )
//   //                         ],
//   //                       ),
//   //                       SizedBox(height: 10,),
//   //                       Row(
//   //
//   //                       ),
//   //                       SizedBox(
//   //                         height: 10,
//   //                       ),
//   //                       Row(
//   //
//   //                       ),
//   //                     ],
//   //                   ),
//   //                   SizedBox(
//   //                       width: 320.0,
//   //                       child: FlatButton(
//   //                         shape: RoundedRectangleBorder(
//   //                             borderRadius: BorderRadius.circular(10.0)),
//   //                         child: Text(
//   //                           "Close",
//   //                           style: TextStyle(color: Colors.white),
//   //                         ),
//   //                         color: const Color(0xFF1BC0C5),
//   //                         onPressed: () {
//   //                           Navigator.of(context).pop();
//   //                         },
//   //                       ))
//   //                 ],
//   //               ),
//   //             ),
//   //           ),
//   //         );
//   //       });
//   // }
//
//   //Text Field's text editing controllers (into 3)
//   // For place 1 , place 2 and place 3
//
//   var place1controller = TextEditingController();
//   var place2controller = TextEditingController();
//   var place3controller = TextEditingController();
//   String place1 = 'BHU',place2 = 'Kashi Vishwanath' , place3 = 'Varanasi Cantt.';
//
//   List<Prediction> place1PredictionList = [];
//   List<Prediction> place2PredictionList = [];
//   List<Prediction> place3PredictionList = [];
//
//   //Function to predict lists of places according to user input
//   // Using google map autocomplete API
//
//   void searchPlaces1(String placeName) async {
//     if (placeName.length >= 0) {
//       String url =
//           'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$placeName&key=$mapApiKey&sessiontoken=1234567890&components=country:IN';
//       var response = await RequestHelper.getRequest(url);
//       if (response == 'failed') {
//         return;
//       }
//       if (response['status'] == 'OK') {
//         var predictionJson = response['predictions'];
//
//         var thisList = (predictionJson as List)
//             .map((e) => Prediction.fromJson(e))
//             .toList();
//
//         setState(() {
//           place1PredictionList = thisList;
//         });
//       }
//     }
//   }
//
//   void searchPlaces2(String placeName) async {
//     if (placeName.length >= 0) {
//       String url =
//           'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$placeName&key=$mapApiKey&sessiontoken=1234567890&components=country:IN';
//       var response = await RequestHelper.getRequest(url);
//       if (response == 'failed') {
//         return;
//       }
//       if (response['status'] == 'OK') {
//         var predictionJson = response['predictions'];
//
//         var thisList = (predictionJson as List)
//             .map((e) => Prediction.fromJson(e))
//             .toList();
//
//         setState(() {
//           place2PredictionList = thisList;
//         });
//       }
//     }
//   }
//
//
//   void searchPlaces3(String placeName) async {
//     if (placeName.length >= 0) {
//       String url =
//           'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$placeName&key=$mapApiKey&sessiontoken=1234567890&components=country:IN';
//       var response = await RequestHelper.getRequest(url);
//       if (response == 'failed') {
//         return;
//       }
//       if (response['status'] == 'OK') {
//         var predictionJson = response['predictions'];
//
//         var thisList = (predictionJson as List)
//             .map((e) => Prediction.fromJson(e))
//             .toList();
//
//         setState(() {
//           place3PredictionList = thisList;
//         });
//       }
//     }
//   }
//
//
//   @override
//
//   //Distance matrix Page styles
//
//   Widget build(BuildContext context) {
//
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: bodyWhiteColor,
//         body: Column(
//           children: [
//             Container(
//               height: 260,
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Stack(
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Icon(
//                           Icons.arrow_back,
//                           color: bodyBlackColor,
//                         ),
//                       ),
//                       Center(
//                         child: Text(
//                           'DISTANCE MATRIX\n3 x 3',
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.rubik(
//                             textStyle: TextStyle(
//                               letterSpacing: 1.5,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: bodyBlackColor,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextField(
//
//                     style: TextStyle(color: Color(0xff000000),),
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.adjust_outlined),
//
//                       contentPadding:
//                       EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey[400]),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide:  BorderSide(color: Colors.grey[400]),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey[400]),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                     ),
//                     controller: place1controller,
//                     onTap: (){
//                       place1controller.text = place1;
//                     },
//
//                   ),
//
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextField(
//
//                     style: TextStyle(color: Color(0xff000000),),
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.adjust_outlined),
//
//                       contentPadding:
//                       EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey[400]),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide:  BorderSide(color: Colors.grey[400]),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey[400]),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                     ),
//                     controller: place2controller,
//                     onTap: (){
//                       place2controller.text = place2;
//                     },
//
//                   ),
//
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextField(
//
//                     style: TextStyle(color: Color(0xff000000),),
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.adjust_outlined),
//
//                       contentPadding:
//                       EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey[400]),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide:  BorderSide(color: Colors.grey[400]),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey[400]),
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                     ),
//                     controller: place3controller,
//                     onTap: (){
//                       place3controller.text = place3;
//                     },
//
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//               child: Material(
//                 elevation: 5.0,
//                 color: Colors.blue,
//                 child: MaterialButton(
//                   onPressed: () async {
//                     var response = await Navigator.push(context,
//                         MaterialPageRoute(builder: (context) =>DmResultPage()));
//
//
//                   },
//                   minWidth: MediaQuery.of(context).size.width * .5,
//                   height: 35.0,
//                   child: Text(
//                     'CALCULATE',
//                     style: GoogleFonts.rubik(
//                       textStyle: TextStyle(
//                         letterSpacing: 1.5,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: bodyWhiteColor,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
