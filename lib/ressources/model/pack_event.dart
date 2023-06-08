class PackEvent {
  final int id;
  final int place;
  final int view;
  final double point;
  final int rating;
  final String title;
  final String dateStart;
  final String dateEnd;
  final int price;
  final List<String> images;

  PackEvent(this.id, this.place, this.view, this.point, this.rating, this.title,
      this.dateStart, this.dateEnd, this.price, this.images);
}
