import 'package:intl/intl.dart';
import 'package:testflutter/pages/home.dart';

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
  if (time < 510) {
    return 0;
  } else if (time < 594) {
    return 1;
  } else if (time < 673) {
    return 2;
  } else if (time < 752) {
    return 3;
  } else if (time < 831) {
    return 4;
  } else if (time < 906) {
    return 5;
  } else {
    return 6;
  }
}

String periodNumber(int numPeriod) {
  if (numPeriod == 0) {
    return "Before School";
  } else if (numPeriod == 1) {
    return "Period 1";
  } else if (numPeriod == 2) {
    return "Period 2";
  } else if (numPeriod == 3) {
    return "Period 3";
  } else if (numPeriod == 4) {
    return "Period 4";
  } else if (numPeriod == 5) {
    return "Period 5";
  } else {
    return "After School";
  }
}

String timeStamps(int numPeriod) {
  if (numPeriod == 0) {
    return "12:00AM - 8:30AM";
  } else if (numPeriod == 1) {
    return "8:30AM - 9:54AM";
  } else if (numPeriod == 2) {
    return "9:54AM - 11:13AM";
  } else if (numPeriod == 3) {
    return "11:13AM - 12:32PM";
  } else if (numPeriod == 4) {
    return "12:32PM - 1:51PM";
  } else if (numPeriod == 5) {
    return "1:51PM - 3:06PM";
  } else {
    return "3:06PM - 12:00AM";
  }
}

double periodProgress(int time, int curPeriod) {
  int period1 = 84;
  int periodTwotoFour = 79;
  int period5 = 75;
  if (curPeriod == 0) {
    return 0;
  } else if (curPeriod == 1) {
    int diff = period1 - (594 - time);
    double divided = ((diff / period1) * 300);
    return divided;
  } else if (curPeriod == 2) {
    int diff = periodTwotoFour - (673 - time);
    double divided = ((diff / periodTwotoFour) * 300);
    return divided;
  } else if (curPeriod == 3) {
    int diff = periodTwotoFour - (752 - time);
    double divided = ((diff / periodTwotoFour) * 300);
    return divided;
  } else if (curPeriod == 4) {
    int diff = periodTwotoFour - (831 - time);
    double divided = ((diff / periodTwotoFour) * 300);
    return divided;
  } else if (curPeriod == 5) {
    int diff = period5 - (906 - time);
    double divided = ((diff / period5) * 300);
    return divided;
  } else {
    return 300.0;
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
    // print(dates[i]);
  }
  // print(dates[4]);
}
