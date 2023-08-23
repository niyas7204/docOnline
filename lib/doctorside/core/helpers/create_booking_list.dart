import 'package:doc_online/doctorside/data/model/bookingsmodel.dart';

createUpcoming(List<Booking> totalList) {
  List<Booking> upcomingBooking = [];
  for (var b in totalList) {
    if (b.status == 'upcoming') {
      upcomingBooking.add(b);
    }
  }
  return upcomingBooking;
}

createCompleted(List<Booking> totalList) {
  List<Booking> completed = [];
  for (var b in totalList) {
    if (b.status == 'completed') {
      completed.add(b);
    }
  }
  return completed;
}
