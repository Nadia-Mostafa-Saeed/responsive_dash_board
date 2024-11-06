import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/Income_details.dart';
import 'package:responsive_dash_board/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width < 1750 && width >= SizeConfig.desktop
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child:
                DetailedIncomeChart(), /*Column(
              children: [
                Expanded(child: DetailedIncomeChart()),
                SizedBox(
                  height: 20,
                ),
                Expanded(child: IncomeDetails()),
              ],
            ),*/
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
