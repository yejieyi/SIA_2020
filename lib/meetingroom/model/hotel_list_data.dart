class meetingroom {
  meetingroom({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    // this.dist = 1.8,
    // this.reviews = 80,
    // this.rating = 4.5,
    // this.perNight = 180,
    this.time = 0,
    this.avail = true,
  });

  String imagePath;
  String titleTxt;
  String subTxt;
  int time;
  // double dist;
  // double rating;
  // int reviews;
  // int perNight;
  bool avail;

  static List<meetingroom> hotelList = <meetingroom>[
    meetingroom(
      imagePath: 'assets/hotel/room1.jpg',
      titleTxt: 'Meeting Room 1',
      subTxt: 'cater for 20-30 pax',
      // dist: 2.0,
      // reviews: 80,
      // rating: 4.4,
      // perNight: 180,
    ),
    meetingroom(
      imagePath: 'assets/hotel/room2.jpg',
      titleTxt: 'Meeting Room 2',
      subTxt: 'cater for 5-6 pax',
      // dist: 4.0,
      // reviews: 74,
      // rating: 4.5,
      // perNight: 200,
    ),
    meetingroom(
      imagePath: 'assets/hotel/room3.jpeg',
      titleTxt: 'Meeting Room',
      subTxt: 'cater for 4-5 pax',
      // dist: 3.0,
      // reviews: 62,
      // rating: 4.0,
      // perNight: 60,
    ),
    meetingroom(
      imagePath: 'assets/hotel/hotel_4.png',
      titleTxt: 'Queen Hotel',
      subTxt: 'Wembley, London',
      // dist: 7.0,
      // reviews: 90,
      // rating: 4.4,
      // perNight: 170,
    ),
    meetingroom(
      imagePath: 'assets/hotel/hotel_5.png',
      titleTxt: 'Grand Royal Hotel',
      subTxt: 'Wembley, London',
      // dist: 2.0,
      // reviews: 240,
      // rating: 4.5,
      // perNight: 200,
    ),
  ];
}
