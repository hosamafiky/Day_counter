var now = DateTime.now();
var date = DateTime(0, now.month, now.day, now.hour);
var endDate = DateTime(0, now.month, now.day + 90, now.hour);

Duration days = endDate.difference(date);
void reset() {
  endDate = date;
}
