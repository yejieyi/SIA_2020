import 'package:best_flutter_ui_templates/meetingroom/hotel_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'model/hotel_list_data.dart';

class HotelListView extends StatelessWidget {
  const HotelListView(
      {Key key,
      this.hotelData,
      this.animationController,
      this.animation,
      this.callback})
      : super(key: key);

  final VoidCallback callback;
  final meetingroom hotelData;
  final AnimationController animationController;
  final Animation<dynamic> animation;

  @override
  Widget build(BuildContext context) {
    int _value = 1;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation.value), 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 8, bottom: 16),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  callback();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        offset: const Offset(4, 4),
                        blurRadius: 16,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 2,
                              child: Image.asset(
                                hotelData.imagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              color: HotelAppTheme.buildLightTheme()
                                  .backgroundColor,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, top: 8, bottom: 8),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              hotelData.titleTxt,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 22,
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  hotelData.subTxt,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey
                                                          .withOpacity(0.8)),
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                // Icon(
                                                //   FontAwesomeIcons.mapMarkerAlt,
                                                //   size: 12,
                                                //   color: HotelAppTheme
                                                //           .buildLightTheme()
                                                //       .primaryColor,
                                                // ),
                                                // Expanded(
                                                //   child: Text(
                                                //     '${hotelData.dist.toStringAsFixed(1)} km to city',
                                                //     overflow:
                                                //         TextOverflow.ellipsis,
                                                //     style: TextStyle(
                                                //         fontSize: 14,
                                                //         color: Colors.grey
                                                //             .withOpacity(0.8)),
                                                //   ),
                                                // ),
                                              ],
                                            ),
                                            // Padding(
                                            //   padding:
                                            //       const EdgeInsets.only(top: 4),
                                            //   child: Row(
                                            //     children: <Widget>[
                                            //       SmoothStarRating(
                                            //         allowHalfRating: true,
                                            //         starCount: 5,
                                            //         rating: hotelData.rating,
                                            //         size: 20,
                                            //         color: HotelAppTheme
                                            //                 .buildLightTheme()
                                            //             .primaryColor,
                                            //         borderColor: HotelAppTheme
                                            //                 .buildLightTheme()
                                            //             .primaryColor,
                                            //       ),
                                            //       Text(
                                            //         ' ${hotelData.reviews} Reviews',
                                            //         style: TextStyle(
                                            //             fontSize: 14,
                                            //             color: Colors.grey
                                            //                 .withOpacity(0.8)),
                                            //       ),
                                            //     ],
                                            //   ),
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, top: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          child: RaisedButton(
                                            onPressed: () {
                                              Future<void>
                                                  _showMyDialog() async {
                                                return showDialog<void>(
                                                  context: context,
                                                  barrierDismissible:
                                                      false, // user must tap button!
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialog(
                                                      title: Text(
                                                          'Book meeting room'),
                                                      content:
                                                          SingleChildScrollView(
                                                        child: ListBody(
                                                          children: <Widget>[
                                                            // Text(
                                                            //     'This is a demo alert dialog.'),
                                                            Text(
                                                                'How long would you like to book this room for?'),
                                                            DropdownButton(
                                                                value: _value,
                                                                items: [
                                                                  DropdownMenuItem(
                                                                    child: Text(
                                                                        "1 hour"),
                                                                    value: 1,
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    child: Text(
                                                                        "2 hour"),
                                                                    value: 2,
                                                                  ),
                                                                  DropdownMenuItem(
                                                                      child: Text(
                                                                          "3 hour"),
                                                                      value: 3),
                                                                  DropdownMenuItem(
                                                                      child: Text(
                                                                          "4 hour"),
                                                                      value: 4)
                                                                ],
                                                                onChanged:
                                                                    (value) {
                                                                  // setState(() {
                                                                  //   _value =
                                                                  //       value;
                                                                  // });
                                                                }),
                                                          ],
                                                        ),
                                                      ),
                                                      actions: <Widget>[
                                                        FlatButton(
                                                          child: Text('Cancel'),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        ),
                                                        FlatButton(
                                                          child: Text('Book'),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }

                                              _showMyDialog();
                                            },
                                            textColor: Colors.white,
                                            padding: const EdgeInsets.all(0.0),
                                            child: const Text('Book',
                                                style: TextStyle(fontSize: 20)),
                                          ),
                                        ),
                                        // Text(
                                        //   '\$${hotelData.perNight}',
                                        //   textAlign: TextAlign.left,
                                        //   style: TextStyle(
                                        //     fontWeight: FontWeight.w600,
                                        //     fontSize: 22,
                                        //   ),
                                        // ),
                                        // Text(
                                        //   '/per night',
                                        //   style: TextStyle(
                                        //       fontSize: 14,
                                        //       color:
                                        //           Colors.grey.withOpacity(0.8)),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(32.0),
                              ),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: HotelAppTheme.buildLightTheme()
                                      .primaryColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
