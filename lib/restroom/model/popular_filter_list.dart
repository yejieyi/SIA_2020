class PopularFilterListData {
  PopularFilterListData({
    this.titleTxt = '',
    this.isSelected = false,
  });

  String titleTxt;
  bool isSelected;

  static List<PopularFilterListData> popularFList = <PopularFilterListData>[
    PopularFilterListData(
      titleTxt: 'Male',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Female',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Handicap',
      isSelected: true,
    ),
    // PopularFilterListData(
    //   titleTxt: 'Pet Friendly',
    //   isSelected: false,
    // ),
    // PopularFilterListData(
    //   titleTxt: 'Free wifi',
    //   isSelected: false,
    // ),
  ];

  static List<PopularFilterListData> accomodationList = [
    PopularFilterListData(
      titleTxt: 'All',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Apartment',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Home',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'Villa',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Hotel',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Resort',
      isSelected: false,
    ),
  ];
}
