import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:weather_app/ui/constants/colors.dart';
import 'package:weather_app/ui/widgets/sunrise_sunset_visual/sunrise_sunset.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
//        SystemChannels.textInput.invokeMethod("TextInput.hide");
      },
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 45.0, bottom: 20.0),
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "This Week",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CustomColors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .50,
                child: ListView.builder(
                    itemCount: 7,
                    padding: EdgeInsets.only(top: 0.0, bottom: 0.0),
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Text(
                                "Wednesday",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: CustomColors.black,
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Text(
                                "24° C",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: CustomColors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                          Expanded(
                            flex: 5,
                            child: Row(
                              children: [
                                Image(
                                    image: NetworkImage(
                                        "http://openweathermap.org/img/wn/10d.png")),
                                SizedBox(width: 10.0),
                                Text(
                                  "Rainy",
                                  style: TextStyle(
                                    color: CustomColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Sun",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CustomColors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Expanded(child: SunriseSunset()),
//            Container(
//              height: 100.0,
//              color: Colors.blue,
//            ),
            ],
          ),
        ),
//
      ),
    );
  }
}
