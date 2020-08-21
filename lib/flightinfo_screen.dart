import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';

class FlightScreen extends StatefulWidget {
  @override
  _FlightScreenState createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              // height: 30,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top + 20,
                        ),
                        child: Text(
                          'Flight Info',
                          style: TextStyle(
                            fontSize: 22,
                            color: AppTheme.darkText,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 0, left: 30, right: 16),
                    child: Image.asset('assets/images/flightinfo.jpeg'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildComposer() {}
}
