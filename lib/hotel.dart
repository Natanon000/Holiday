final String tableHotel = 'tbHotel';
final String columnId = 'id';
final String columnHotelName = 'hotelName';
final String columnHotelDes = 'description';
final String columnImg = 'img';

class Hoteldb {
  int? id;
  final String hotelName;
  final String description;
  final String img;

  Hoteldb(
    this.hotelName,
    this.description,
    this.img,
  );

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      columnHotelName: hotelName,
      columnHotelDes: description,
      columnImg: img,
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }
}
