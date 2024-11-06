import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.incomeItemDetailsModel});

  final IncomeItemDetailsModel incomeItemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeItemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeItemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeItemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
