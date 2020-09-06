enum NOTIFICATION_SETTINGS { NONE, SHOW_5, SHOW_10, SHOW_SPOT }

class Course {
  String _name;
  String _comment;
  DateTime _beginDate;
  DateTime _endDate;
  Dosage _dosage;
  Schedule _schedule;
  NOTIFICATION_SETTINGS _notificationSettings;

  NOTIFICATION_SETTINGS get notificationSettings => _notificationSettings;

  set notificationSettings(NOTIFICATION_SETTINGS value) {
    _notificationSettings = value;
  }

  Schedule get schedule => _schedule;

  set schedule(Schedule value) {
    _schedule = value;
  }

  Dosage get dosage => _dosage;

  set dosage(Dosage value) {
    _dosage = value;
  }

  DateTime get endDate => _endDate;

  set endDate(DateTime value) {
    _endDate = value;
  }

  DateTime get beginDate => _beginDate;

  set beginDate(DateTime value) {
    _beginDate = value;
  }

  String get comment => _comment;

  set comment(String value) {
    _comment = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}

class Dosage {
  int _amount;
  String _type;
}

class Schedule {
  List<int> _days;
  List<DateTime> _times;
}
