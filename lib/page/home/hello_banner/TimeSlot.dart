class TimeSlot {
  final String name;
  final num minHour;
  final num maxHour;

  TimeSlot(this.name, this.minHour, this.maxHour);

  static initDayTimeSlot() {
    var list = [];
    list.add(TimeSlot("深夜了", 23, 6));
    list.add(TimeSlot("早上好!", 6, 8));
    list.add(TimeSlot("上午好!", 8, 11));
    list.add(TimeSlot("中午好!", 11, 13));
    list.add(TimeSlot("下午好!", 13, 17));
    list.add(TimeSlot("傍午好!", 17, 19));
    list.add(TimeSlot("晚上好!", 19, 23));
    return list;
  }
}
