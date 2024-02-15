library better_calendar;

import 'package:flutter/material.dart';

sealed class BettherCalendarCase {
  final Color backgroundColor;

  Future<void> showCalendar(
    BuildContext context, {
    required BettherCalendarConfig config,
  });
  BettherCalendarCase(this.backgroundColor);
}

class RedCalendar implements BettherCalendarCase {
  @override
  final Color backgroundColor = Colors.red;

  @override
  Future<void> showCalendar(
    BuildContext context, {
    BettherCalendarConfig config = const BettherCalendarConfig(),
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return BetterCalendarWidget(
          width: config.width,
          height: config.height,
          backgroundColor: backgroundColor,
          textColor: config.textColor,
          textSize: config.textSize,
          borderRadius: config.borderRadius,
        );
      },
    );
  }
}

class BlueCalendar implements BettherCalendarCase {
  @override
  final Color backgroundColor = Colors.blue;

  @override
  Future<void> showCalendar(
    BuildContext context, {
    BettherCalendarConfig config = const BettherCalendarConfig(),
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return BetterCalendarWidget(
          width: config.width,
          height: config.height,
          backgroundColor: backgroundColor,
          textColor: config.textColor,
          textSize: config.textSize,
          borderRadius: config.borderRadius,
        );
      },
    );
  }
}

class GreenCalendar implements BettherCalendarCase {
  @override
  final Color backgroundColor = Colors.green;

  @override
  Future<void> showCalendar(
    BuildContext context, {
    BettherCalendarConfig config = const BettherCalendarConfig(),
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return BetterCalendarWidget(
          width: config.width,
          height: config.height,
          backgroundColor: backgroundColor,
          textColor: config.textColor,
          textSize: config.textSize,
          borderRadius: config.borderRadius,
        );
      },
    );
  }
}

class YellowCalendar implements BettherCalendarCase {
  @override
  final Color backgroundColor = Colors.yellow;

  @override
  Future<void> showCalendar(
    BuildContext context, {
    BettherCalendarConfig config = const BettherCalendarConfig(),
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return BetterCalendarWidget(
          width: config.width,
          height: config.height,
          backgroundColor: backgroundColor,
          textColor: config.textColor,
          textSize: config.textSize,
          borderRadius: config.borderRadius,
        );
      },
    );
  }
}

class BettherCalendarConfig {
  final double width;
  final double height;
  final Color textColor;
  final double textSize;
  final double borderRadius;

  const BettherCalendarConfig({
    this.width = 120,
    this.height = 160,
    this.textColor = Colors.black,
    this.textSize = 16,
    this.borderRadius = 12,
  });
}

final class BetterCalendarWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final double textSize;
  final double borderRadius;

  const BetterCalendarWidget({
    super.key,
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.textColor,
    required this.textSize,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Text(
            'Hello, world!',
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
            ),
          ),
        ),
      ),
    );
  }
}
