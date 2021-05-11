

import 'package:connectivity/connectivity.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:naksa/constants/global_variables.dart';
import 'package:naksa/data_models/address.dart';
import 'package:naksa/data_models/directionDetails.dart';
import 'package:naksa/data_provider/appdata.dart';
import 'package:naksa/helpers/requestHelper.dart';
import 'package:provider/provider.dart';

class HelperMethods
{

  // Reverse geo - coding to retrieve the place data from google map api
  // Calling instances of Address class to store the required data
  static Future<String> findAddressByCoordinates(Position position , context) async{
      String placeAddress ='';
      var connectivityChecker = await Connectivity().checkConnectivity();
      if(connectivityChecker != ConnectivityResult.mobile && connectivityChecker != ConnectivityResult.wifi)
        {
          return placeAddress;
        }
      String url = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$mapApiKey';

      var response = await RequestHelper.getRequest(url);

      if(response != 'failed')
        {
          placeAddress = response['results'][0]['formatted_address'];
          Address originAddress = new Address();

          originAddress.latitude = position.latitude;
          originAddress.longitude = position.longitude;
          originAddress.placeName = placeAddress;

          Provider.of<AppData>(context, listen:  false).updateOriginAddress(originAddress);
        }
      return placeAddress;
  }

  //A function to store direction data
  // Calling an instance of DirectionDetails to store required data
  //Function is taking responses of starting (origin) and ending point(destination) to get the details

  static Future<DirectionDetails> getDirectionDetails(LatLng startPosition, LatLng endPosition) async {
    String url = 'https://maps.googleapis.com/maps/api/directions/json?origin=${startPosition.latitude},${startPosition.longitude}&destination=${endPosition.latitude},${endPosition.longitude}&mode=driving&key=$mapApiKey';
    var response = await RequestHelper.getRequest(url);

    if(response == 'failed')
      {
        return null;
      }
    DirectionDetails directionDetails = DirectionDetails();

    directionDetails.durationText = response['routes'][0]['legs'][0]['duration']['text'];
    directionDetails.durationValue = response['routes'][0]['legs'][0]['duration']['value'];

    directionDetails.distanceText = response['routes'][0]['legs'][0]['distance']['text'];
    directionDetails.distanceValue = response['routes'][0]['legs'][0]['distance']['value'];

    directionDetails.encodedPoints = response['routes'][0]['overview_polyline']['points'];

    return directionDetails;

  }



  static Future<List<DirectionDetails>> getDmDetails() async {

    //BHU
    LatLng p1 = LatLng(25.2677,82.9913);
    //VT
    LatLng p2 = LatLng(25.3109,83.0107);
    //Varanasi Cantt.
    LatLng p3 = LatLng(25.3291,82.9658);


    String url = 'https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=${p1.latitude},${p1.longitude}|${p2.latitude},${p2.longitude}|${p3.latitude},${p3.longitude}&destinations=${p1.latitude},${p1.longitude}|${p2.latitude},${p2.longitude}|${p3.latitude},${p3.longitude}&key=$mapApiKey';
    var response = await RequestHelper.getRequest(url);
    if(response == 'failed')
      {
        return null;
      }
    DirectionDetails d1d3= DirectionDetails();
    DirectionDetails d3d1 = DirectionDetails();
    DirectionDetails d1d2 = DirectionDetails();
    DirectionDetails d2d3 = DirectionDetails();
    DirectionDetails d2d1= DirectionDetails();
    DirectionDetails d3d2 = DirectionDetails();


    d1d2.durationText =  response['rows'][0]['elements'][1]['duration']['text'];
    d1d2.distanceText = response['rows'][0]['elements'][1]['distance']['text'];

    d1d3.distanceText = response['rows'][0]['elements'][2]['distance']['text'];
    d1d3.durationText = response['rows'][0]['elements'][2]['duration']['text'];

    d2d3.distanceText = response['rows'][1]['elements'][2]['distance']['text'];
    d2d3.durationText = response['rows'][1]['elements'][2]['duration']['text'];

    d2d1.distanceText =  response['rows'][1]['elements'][0]['distance']['text'];
    d2d1.durationText = response['rows'][1]['elements'][0]['duration']['text'];

    d3d1.distanceText = response['rows'][2]['elements'][0]['distance']['text'];
    d3d1.durationText = response['rows'][2]['elements'][0]['duration']['text'];

    d3d2.distanceText = response['rows'][2]['elements'][1]['distance']['text'];
    d3d2.durationText = response['rows'][2]['elements'][1]['duration']['text'];

    List<DirectionDetails> values = [d1d2,d1d3,d2d3,d2d1,d3d1,d3d2];

    return values;
    // return d1d2;

        // List<String> values;
        // DirectionDetails d11,d12,d13,d21,d22,d23,d31,d32,d33 = DirectionDetails();
        // d11.distanceText = response['rows'][0]['elements'][0]['distance']['text'];
        // d11.durationText = response['rows'][0]['elements'][0]['duration']['text'];
        //
        // values[0] = d11.distanceText;
        // values[1] = d11.durationText;
        // d12.distanceText = response['rows'][0]['elements'][1]['distance']['text'];
        // d12.durationText = response['rows'][0]['elements'][1]['duration']['text'];
        // values[2] = d12.distanceText;
        // values[3] = d12.durationText;
        // values[4] = d13.distanceText = response['rows'][0]['elements'][2]['distance']['text'];
        // values[5] = d13.durationText = response['rows'][0]['elements'][2]['duration']['text'];
        //
        // values[6] = d21.distanceText = response['rows'][1]['elements'][0]['distance']['text'];
        // values[7] = d21.durationText = response['rows'][1]['elements'][0]['duration']['text'];
        //
        // values[8] = d22.distanceText = response['rows'][1]['elements'][1]['distance']['text'];
        // values[9] = d22.durationText = response['rows'][1]['elements'][1]['duration']['text'];
        //
        // values[10] = d23.distanceText = response['rows'][1]['elements'][2]['distance']['text'];
        // values[11] = d23.durationText = response['rows'][1]['elements'][2]['duration']['text'];
        //
        // values[12] = d31.distanceText = response['rows'][2]['elements'][0]['distance']['text'];
        // values[13] = d31.durationText = response['rows'][2]['elements'][0]['duration']['text'];
        //
        // values[14] = d32.distanceText = response['rows'][2]['elements'][1]['distance']['text'];
        // values[15] = d32.durationText = response['rows'][2]['elements'][1]['duration']['text'];
        //
        // values[16] = d33.distanceText = response['rows'][2]['elements'][2]['distance']['text'];
        // values[17] = d33.durationText = response['rows'][2]['elements'][2]['duration']['text'];

        //
        // return d1d2;


  }
}
