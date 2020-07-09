import 'package:Event_App/data/data.dart';
import 'package:Event_App/models/date_model.dart';
import 'package:Event_App/models/event_type_model.dart';
import 'package:Event_App/models/events_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DateModel> dates = new List<DateModel>();
  List<EventTypeModel> eventTypes = new List<EventTypeModel>();
  List<EventsModel> events = new List<EventsModel>();

  String todaysDate = "12";

  @override
  void initState() {
    super.initState();
    dates = getDates();
    eventTypes = getEventTypes();
    events = getEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF102733),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/logo.png', height: 28),
                      SizedBox(width: 8),
                      Row(
                        children: [
                          Text(
                            'UVE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'NTO',
                            style: TextStyle(
                              color: Color(0xFFFFA700),
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset('assets/notify.png', height: 25),
                      SizedBox(width: 16),
                      Image.asset('assets/menu.png', height: 25),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Kharioki !!!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Let's explore what's happening nearby",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        child: Image.asset(
                          'assets/profile.png',
                          height: 35,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  /// Dates
                  Container(
                    height: 60,
                    child: ListView.builder(
                      itemCount: dates.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return DateTile(
                          weekDay: dates[index].weekDay,
                          date: dates[index].date,
                          isSelected: todaysDate == dates[index].date,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),

                  /// Events
                  Text(
                    'All Events',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      itemCount: eventTypes.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return EventTile(
                          imgAssetPath: eventTypes[index].imgAssetPath,
                          eventType: eventTypes[index].eventType,
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 10),

                  /// Popular events
                  Text(
                    'Popular Events',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),

                  Container(
                    // height: 100,
                    child: ListView.builder(
                      itemCount: events.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return PopularEventTile(
                          desc: events[index].desc,
                          date: events[index].date,
                          address: events[index].address,
                          imgAssetPath: events[index].imgAssetPath,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateTile extends StatelessWidget {
  String weekDay;
  String date;
  bool isSelected;

  DateTile({this.weekDay, this.date, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffFCCD00) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            date,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          Text(
            weekDay,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}

class EventTile extends StatelessWidget {
  String imgAssetPath;
  String eventType;

  EventTile({this.imgAssetPath, this.eventType});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Color(0xFF29404E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imgAssetPath,
            height: 27,
          ),
          SizedBox(height: 12),
          Text(
            eventType,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class PopularEventTile extends StatelessWidget {
  String desc;
  String date;
  String address;
  String imgAssetPath;

  PopularEventTile({this.desc, this.date, this.address, this.imgAssetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Color(0xFF29404E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16, top: 16),
              width: MediaQuery.of(context).size.width - 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    desc,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Image.asset(
                        'assets/calendar.png',
                        height: 12,
                      ),
                      SizedBox(width: 8),
                      Text(
                        date,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Image.asset(
                        'assets/location.png',
                        height: 12,
                      ),
                      SizedBox(width: 8),
                      Text(
                        address,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            child: Image.asset(
              imgAssetPath,
              height: 100,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
