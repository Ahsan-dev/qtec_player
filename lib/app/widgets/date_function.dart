import 'package:intl/intl.dart';

String dateFormatter(String dateString, [bool? withTime, String? pattern]) {
  bool dateWithTime = withTime ?? false;
  String dateStingPattern = pattern ?? (withTime == true ? 'dd-MMM-yyyy H : m' : 'yyyy-MM-dd');

  if (dateString.isEmpty) {
    return '';
  } else {
    //parse string to date object
    final dateTime = DateTime.parse(dateString);

    //format
    final DateFormat formatter = DateFormat(dateStingPattern);
    final String formatted = formatter.format(dateTime);
    return formatted; // something like 2013-04-20
  }
}

String getDaysCount(DateTime creationTime) {
  Duration timeDifference = DateTime.now().difference(creationTime);
  int differenceInDays = timeDifference.inDays;
  int differenceInHours = timeDifference.inHours;
  int differenceInMinutes = timeDifference.inMinutes;
  if (differenceInDays > 0) {
    return "$differenceInDays ${differenceInDays > 1 ? 'days' : 'day'} ago";
  } else if (differenceInHours > 0) {
    return "$differenceInHours ${differenceInHours > 1 ? 'hours' : 'hour'} ago";
  } else if (differenceInMinutes > 0) {
    return "$differenceInMinutes ${differenceInMinutes > 1 ? 'minutes' : 'minute'} ago";
  } else if (differenceInMinutes <= 0) {
    return "just now";
  } else {
    return "undetermined time ago";
  }
}