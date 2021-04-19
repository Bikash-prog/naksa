
//This class helps us in holding the prediction of places
// that we can retrieve from Google Place Api
// We are extracting placeID , Place Name and a long formatted place details
// We have used this class
class Prediction {
  String placeId;
  String mainText;
  String secondaryText;
  Prediction({this.placeId,this.mainText,this.secondaryText});

  Prediction.fromJson(Map<String , dynamic> json){
    placeId = json['place_id'];
    mainText = json['structured_formatting']['main_text'];
    secondaryText = json['structured_formatting']['secondary_text'];
  }

}
