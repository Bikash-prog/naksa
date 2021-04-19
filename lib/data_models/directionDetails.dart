
// This class gives the direction details
// Like distance and duration between two points (2 by 2)
// We have only used distanceText , durationText and encodedPoints in homePage Map

class DirectionDetails{

  String distanceText;
  String durationText;
  int distanceValue;
  int durationValue;
  String encodedPoints;

  DirectionDetails({this.distanceText,this.distanceValue,this.durationText,this.durationValue,this.encodedPoints});

}


//Not functional till now as we haven't used DistanceMatrix URL
// It'll be helpful while making 3 by 3 Distance and Time Matrix
// In this case we can use this DistanceMatrixTimeDistance Class

class DistanceMatrixTimeDistance{
  String durationText;
  String distanceText;

  DistanceMatrixTimeDistance({this.durationText,this.distanceText});
}
