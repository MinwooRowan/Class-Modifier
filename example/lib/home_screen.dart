import 'package:better_calendar/better_calendar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await getColorCanlendar(BlueCalendar(), context);
              },
              child: const Text('Show Calendar'),
            ),
            const Text('Hello, world!'),
          ],
        ),
      ),
    );
  }

  Future<void> getColorCanlendar(
      BettherCalendarCase calendarCase, BuildContext context) async {
    return switch (calendarCase) {
      RedCalendar() => RedCalendar().showCalendar(context),
      BlueCalendar() => BlueCalendar().showCalendar(context),
      GreenCalendar() => GreenCalendar().showCalendar(context),
      YellowCalendar() => YellowCalendar().showCalendar(context),
    };
  }
}
