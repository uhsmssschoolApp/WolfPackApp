import 'package:intl/intl.dart';

List<String> dates = List.filled(5, "", growable: false);

int findTime(DateTime now) {
  // converts the time to mintues unit which can be used as
  String date = (DateFormat('Hm').format(now));
  String hoursTemp = "";
  for (int i = 0; i < date.length; i++) {
    if (date[i] == ":") {
      break;
    }
    hoursTemp += date[i];
  }
  int hours = int.parse(hoursTemp) * 60;
  int minutes = int.parse(date.substring(3));
  int time = hours + minutes;
  return time;
}

String greetingMessage(int time) {
  if (time < 720) {
    return "Good Morning!";
  } else if (time < 1080) {
    return "Good Afternoon!";
  } else {
    return "Good Evening!";
  }
}

int findPeriod(int time) {
  // current period
  if (time < 525) {
    return 0;
  } else if (time <= 680) {
    return 1;
  } else if (time <= 745) {
    return 2;
  } else if (time <= 900) {
    return 3;
  } else {
    return 4;
  }
}

String periodNumber(int numPeriod) {
  if (numPeriod == 0) {
    return "Before School";
  } else if (numPeriod == 1) {
    return "Period 1";
  } else if (numPeriod == 2) {
    return "Lunch";
  } else if (numPeriod == 3) {
    return "Period 2";
  } else {
    return "After School";
  }
}

String timeStamps(int numPeriod) {
  if (numPeriod == 0) {
    return "12:00AM - 8:30AM";
  } else if (numPeriod == 1) {
    return "8:45AM - 11:20AM";
  } else if (numPeriod == 2) {
    return "11:20AM - 12:25AM";
  } else if (numPeriod == 3) {
    return "12:25AM - 3:00PM";
  } else {
    return "3:00PM - 12:00AM";
  }
}

double periodProgress(int time, int curPeriod, double width) {
  int period = 155;
  int lunch = 65;
  if (curPeriod == 0) {
    return 0;
  } else if (curPeriod == 1) {
    int diff = period - (680 - time);
    double divided = ((diff / period) * width);
    return divided;
  } else if (curPeriod == 2) {
    int diff = lunch - (745 - time);
    double divided = ((diff / lunch) * width);
    return divided;
  } else if (curPeriod == 3) {
    int diff = period - (900 - time);
    double divided = ((diff / period) * width);
    return divided;
  } else {
    return width;
  }
}

String goBack(int day, DateTime now) {
  DateTime before = DateTime.now().subtract(Duration(days: day));
  String aDate = DateFormat('EE MMM dd').format(before);
  return aDate;
}

// temporary function
void initDates(DateTime now) {
  dates[4] = DateFormat('EE MMM dd').format(now);
  for (int i = 0; i < 4; i++) {
    dates[i] = goBack(4 - i, now);
  }
}
