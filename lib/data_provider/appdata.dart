
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:naksa/data_models/address.dart';
// This whole class check and store changes and listen it
class AppData extends ChangeNotifier
{
  Address originAddress;
  Address destinationAddress;
  Address place1 , place2 , place3;

  void updateOriginAddress(Address origin)
  {
    originAddress = origin;
    notifyListeners();
  }

  void updateDestinationAddress( Address destination)
  {
    destinationAddress = destination;
    notifyListeners();
  }

  void updatePlaceAddress(Address firstPlace)
  {
    place1 = firstPlace;
    notifyListeners();
  }
  void updatePlaceAddress2(Address secondPlace)
  {
    place2 = secondPlace;
    notifyListeners();
  }
  void updatePlaceAddress3(Address thirdPlace)
  {
    place3 = thirdPlace;
    notifyListeners();
  }


}
