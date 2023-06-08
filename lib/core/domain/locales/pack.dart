import 'categories.dart';

class Pack{
  final List<String>img;
  final bool popular;
  final String title;
  final String rate;
  final String avis;
  final String dateInterval;
  final String nbreDate;
  final String price;

  Pack({required this.img,  this.popular=false, required this.title, required this.rate, required this.avis,
    required this.dateInterval, required this.nbreDate, required this.price});
}
List<Pack>allPack=[
  Pack(img: allImage, title: "Nature Sauvage Bronze", rate: "4.8", avis: "600", dateInterval: "22 Juillet-30 Août", nbreDate: "4", price: "100.000",popular: true),
  Pack(img: allImage, title: "Nature Sauvage Bronze", rate: "4.8", avis: "600", dateInterval: "22 Juillet-30 Août", nbreDate: "4", price: "100.000"),
  Pack(img: allImage, title: "Nature Sauvage Bronze", rate: "4.8", avis: "600", dateInterval: "22 Juillet-30 Août", nbreDate: "4", price: "100.000"),
  Pack(img: allImage, title: "Nature Sauvage Bronze", rate: "4.8", avis: "600", dateInterval: "22 Juillet-30 Août", nbreDate: "4", price: "100.000"),
  Pack(img: allImage, title: "Nature Sauvage Bronze", rate: "4.8", avis: "600", dateInterval: "22 Juillet-30 Août", nbreDate: "4", price: "100.000"),
];