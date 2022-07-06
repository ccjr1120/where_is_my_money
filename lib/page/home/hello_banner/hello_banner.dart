import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:where_is_my_money/page/home/hello_banner/TimeSlot.dart';

Future getWeather() async {
  try {
    Response response;
    response = await Dio().get(
      'https://api.seniverse.com/v3/weather/now.json',
      queryParameters: {
        "key": "Scygs4XUoNz79kPDC",
        "location": "beijing",
        "language": "zh-Hans",
        "unit": "c"
      },
    );
    return response.data;
  } catch (e) {
    return null;
  }
}

class HelloBanner extends StatefulWidget {
  const HelloBanner({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HelloBannerState();
}

class _HelloBannerState extends State<HelloBanner> {
  String _bannerText = "早上好!";
  String _dateText = "20220704";
  String _weatherText = "晴";
  String _weatherAsset = "0@1x.png";
  @override
  void initState() {
    var now = DateTime.now();
    int curHour = now.hour;
    String curBanner = "";
    var timeSlotList = TimeSlot.initDayTimeSlot();
    for (TimeSlot timeSlot in timeSlotList) {
      if (timeSlot.maxHour >= curHour && timeSlot.minHour <= curHour) {
        curBanner = timeSlot.name;
      }
    }
    setState(() {
      _bannerText = curBanner;
      _dateText = "${now.year}年${now.month}月${now.day}日";
    });
    getWeather().then((value) {
      if (value != null) {
        String nowWeatherText = value['results'][0]["now"]["text"];
        String nowWeatherCode = value['results'][0]["now"]["code"];
        setState(() {
          _weatherText = nowWeatherText;
          _weatherAsset = "$nowWeatherCode@1x.png";
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "HI, $_bannerText",
            style: const TextStyle(
                fontFamily: "Din",
                color: Color.fromRGBO(35, 50, 81, 1),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(_dateText,
                    style: const TextStyle(
                        fontFamily: "Din",
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(173, 180, 190, 1),
                        fontSize: 14)),
                const Padding(padding: EdgeInsets.all(4)),
                Container(
                  padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                  child: Image(
                    image: AssetImage("assets/images/weather/$_weatherAsset"),
                    width: 16,
                    height: 16,
                  ),
                ),
                Text(_weatherText,
                    style: const TextStyle(
                        fontFamily: "Din",
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(173, 180, 190, 1),
                        fontSize: 14)),
              ],
            ))
      ],
    );
  }
}
