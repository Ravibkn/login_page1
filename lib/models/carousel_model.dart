// ignore_for_file: public_member_api_docs, sort_constructors_first
class CarouselModel {
  String image;
  CarouselModel({
    required this.image,
  });
}

List<CarouselModel> carousels =
    carouselsData.map((item) => CarouselModel(image: item['image']!)).toList();

var carouselsData = [
  {"image": "assets/images/carousel_flight_discount.png"},
  {"image": "assets/images/carousel_hotel_discount.png"},
  {"image": "assets/images/carousel_covid_discount.png"},
];
