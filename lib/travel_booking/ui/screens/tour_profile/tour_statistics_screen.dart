import 'package:flutter/material.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_color_constent.dart';
import 'package:travel_booking/travel_booking/ui/utils/app_string_constent.dart';

class TourStatistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StatisticColumn(
              label: AppStringConstant.guide,
              value: AppStringConstant.guideNo,
            ),
            StatisticColumn(
              label: AppStringConstant.experience,
              value: AppStringConstant.experienceNo,
            ),
            StatisticColumn(
              label: AppStringConstant.rate,
              value: AppStringConstant.rateNo,
            ),
          ],
        ),
      ],
    );
  }
}

class StatisticColumn extends StatelessWidget {
  final String label;
  final String value;

  const StatisticColumn({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(color: AppColorConstant.appText2Color),
        ),
        Text(
          value,
        ),
      ],
    );
  }
}