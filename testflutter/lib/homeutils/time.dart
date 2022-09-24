import 'package:intl/intl.dart';

List<String> dates = List.filled(5, "", growable: false);

/*

Displaying period:
findTime --> findPeriod --> period number --> display

0: before school 
1: p1
2: p2
3: lunch
4: p3
5: p4
6: afterschool

*/

//school times in minutes
const int schoolStart = 505; //8:25
const int period1End = 590; //9:50
const int period2End = 670; //11:10
const int period3End = 750; //12:30
const int period4End = 830; //1:50 PM
const int period5End = 905; //3:05 PM

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
  //edit this to change the intervals
  // current period
  if (time <= schoolStart) {
    return 0;
  } else if (time <= period1End) {
    return 1;
  } else if (time <= period2End) {
    return 2;
  } else if (time <= period3End) {
    return 3;
  } else if (time <= period4End) {
    return 4;
  } else if (time <= period5End) {
    return 5;
  } else {
    return 6;
  }
}

String periodNumber(int numPeriod) {
  //edit this to change what each interval displays
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
    return "12:00AM - 8:25AM";
  } else if (numPeriod == 1) {
    return "8:25AM - 9:50AM";
  } else if (numPeriod == 2) {
    return "9:50AM - 11:10AM";
  } else if (numPeriod == 3) {
    return "11:10AM - 12:30PM";
  } else if (numPeriod == 4) {
    return "12:30PM - 1:50PM";
  } else if (numPeriod == 5) {
    return "1:50PM - 3:05PM";
  } else {
    return "3:05PM - 12:00AM";
  }
}

double periodProgress(int time, int curPeriod, double width) {
  //function to fill up the bar
  int period_1 = 85;
  int period = 80;
  int period_5 = 75;
  // The following comments were used in 2021-2022, but not needed for 2022-2023
  // int period_4 = 80;
  // int lunch = 50;
  if (curPeriod == 0) {
    return 0;
  } else if (curPeriod == 1) {
    int diff = period_1 - (period1End - time);
    double divided = ((diff / period) * width);
    return divided;
  } else if (curPeriod == 2) {
    int diff = period - (period2End - time);
    double divided = ((diff / period) * width);
    return divided;
  } else if (curPeriod == 3) {
    int diff = period - (period3End - time);
    double divided = ((diff / period) * width);
    return divided;
  } else if (curPeriod == 4) {
    int diff = period - (period4End - time);
    double divided = ((diff / period) * width);
    return divided;
  } else if (curPeriod == 5) {
    int diff = period_5 - (period5End - time);
    double divided = ((diff / period_5) * width);
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
