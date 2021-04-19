

// A class which will contain address details
// like name of the place, its LatLng , placeID etc
// We can call its instance whenever we need it
class Address
{
  String placeName;
  double latitude;
  double longitude;
  String placeId;
  String placeFormattedAddress;


  Address({this.placeId,this.latitude,this.longitude,this.placeName,this.placeFormattedAddress});
}
