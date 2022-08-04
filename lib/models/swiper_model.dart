// ignore_for_file: public_member_api_docs, sort_constructors_first
class SwiperModls {
  String image;
  SwiperModls({
    required this.image,
  });
}

List<SwiperModls> swipermodls =
    swiperData.map((item) => SwiperModls(image: item['image']!)).toList();

var swiperData = [
  {"image": "assets/images/khatron_ke_khiladi.jpg"},
  {"image": "assets/images/naagin.png"},
  {"image": "assets/images/sasural_simar_ka_2.jpg"}
];
