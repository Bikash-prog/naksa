
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:naksa/constants/constant_colors.dart';
import 'package:naksa/constants/global_variables.dart';
import 'package:naksa/data_models/address.dart';
import 'package:naksa/data_models/prediction.dart';
import 'package:naksa/data_provider/appdata.dart';
import 'package:naksa/helpers/requestHelper.dart';
import 'package:naksa/screens/distance_matrix_page.dart';
import 'package:provider/provider.dart';


// Prediction Tile for DM (DISTANCE MATRIX PAGE)
class DmPredictionTile extends StatelessWidget{

  final Prediction prediction1;

  DmPredictionTile({this.prediction1});
  void getPlaceDetails1(String placeID , context) async{
    String url ='https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeID&key=$mapApiKey';


    var response = await RequestHelper.getRequest(url);

    if(response == 'failed'){
      return;
    }
    if(response['status'] == 'OK')
    {
      Address thisPlace = Address();
      thisPlace.placeName = response['result']['name'];
      thisPlace.placeId = placeID;
      thisPlace.latitude = response['result']['geometry']['location']['lat'];
      thisPlace.longitude = response['result']['geometry']['location']['lng'];
      Provider.of<AppData>(context, listen:  false).updatePlaceAddress(thisPlace);
      print( thisPlace.placeName);
      // Navigator.pop(context , 'getDirection');
      getPlaceDetails1(placeID, context);
    }
  }

// foundation of each box that appears when a prediction is called (auto complete)
// How each box should be formatted while List of Predicted places are displayed is here
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
        getPlaceDetails1(prediction1.placeId, context);
      },
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 8,),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.grey,),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(prediction1.mainText, overflow: TextOverflow.ellipsis, maxLines: 1, style: TextStyle(fontSize: 17,color: bodyBlackColor),),
                      SizedBox(height: 2,),
                      Text(prediction1.secondaryText, overflow: TextOverflow.ellipsis, maxLines: 1, style: TextStyle(fontSize: 13,color: bodyBlackColor),),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 8,)
          ],
        ),
      ),
    );
  }
}
class DmPredictionTile2 extends StatelessWidget {

  final Prediction prediction2;

  DmPredictionTile2({this.prediction2});

  void getPlaceDetails2(String placeID , context) async{
    String url ='https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeID&key=$mapApiKey';


    var response = await RequestHelper.getRequest(url);

    if(response == 'failed'){
      return;
    }
    if(response['status'] == 'OK')
    {
      Address thisPlace = Address();
      thisPlace.placeName = response['result']['name'];
      thisPlace.placeId = placeID;
      thisPlace.latitude = response['result']['geometry']['location']['lat'];
      thisPlace.longitude = response['result']['geometry']['location']['lng'];
      Provider.of<AppData>(context, listen:  false).updatePlaceAddress2(thisPlace);
      print('2'+ thisPlace.placeName);


      // Navigator.pop(context , 'getDirection');
    }
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        getPlaceDetails2(prediction2.placeId,context);
      },
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 8,),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.grey,),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(prediction2.mainText, overflow: TextOverflow.ellipsis, maxLines: 1, style: TextStyle(fontSize: 17,color: bodyBlackColor),),
                      SizedBox(height: 2,),
                      Text(prediction2.secondaryText, overflow: TextOverflow.ellipsis, maxLines: 1, style: TextStyle(fontSize: 13,color: bodyBlackColor),),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 8,)
          ],
        ),
      ),
    );
  }
}

class DmPredictionTile3 extends StatelessWidget {

  final Prediction prediction3;

  DmPredictionTile3({this.prediction3});

  void getPlaceDetails3(String placeID , context) async{
    String url ='https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeID&key=$mapApiKey';


    var response = await RequestHelper.getRequest(url);

    if(response == 'failed'){
      return;
    }
    if(response['status'] == 'OK')
    {
      Address thisPlace = Address();
      thisPlace.placeName = response['result']['name'];
      thisPlace.placeId = placeID;
      thisPlace.latitude = response['result']['geometry']['location']['lat'];
      thisPlace.longitude = response['result']['geometry']['location']['lng'];
      Provider.of<AppData>(context, listen:  false).updatePlaceAddress3(thisPlace);
      print('3' + thisPlace.placeName);


      // Navigator.pop(context , 'getDirection');
    }
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        getPlaceDetails3(prediction3.placeId,context);
      },
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 8,),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.grey,),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(prediction3.mainText, overflow: TextOverflow.ellipsis, maxLines: 1, style: TextStyle(fontSize: 17,color: bodyBlackColor),),
                      SizedBox(height: 2,),
                      Text(prediction3.secondaryText, overflow: TextOverflow.ellipsis, maxLines: 1, style: TextStyle(fontSize: 13,color: bodyBlackColor),),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 8,)
          ],
        ),
      ),
    );
  }
}