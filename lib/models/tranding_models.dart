// ignore_for_file: public_member_api_docs, sort_constructors_first
class TrandingModel {
  String images;
  TrandingModel({
    required this.images,
  });
}

List<TrandingModel> travilmodls =
    trandingData.map((item) => TrandingModel(images: item['image']!)).toList();

var trandingData = [
  {"image": "assets/images/Harphoul-Mohini.jpg"},
  {"image": "assets/images/index.jpg"},
  {"image": "assets/images/kamana.jpg"},
  {"image": "assets/images/muskurane-ki-wajah-tum-ho.jpg"},
  {"image": "assets/images/puspa_imposibal.jpg"},
];
