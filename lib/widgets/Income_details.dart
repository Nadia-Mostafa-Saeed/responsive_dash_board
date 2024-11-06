import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_details_model.dart';
import 'package:responsive_dash_board/widgets/Income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeItemDetailsModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xFF208BC7),
    ),
    IncomeItemDetailsModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xFF4DB7F2),
    ),
    IncomeItemDetailsModel(
      title: 'Product royalti',
      value: '20%',
      color: Color(0xFF064060),
    ),
    IncomeItemDetailsModel(
      title: 'Other',
      value: '22%',
      color: Color(0xFFE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map((e) => IncomeItemDetails(incomeItemDetailsModel: e))
          .toList(),
    );
    /*return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IncomeItemDetails(
            incomeItemDetailsModel: items[index],
          );
        });*/
  }
}
