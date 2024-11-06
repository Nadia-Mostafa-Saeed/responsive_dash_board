import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_model.dart';
import 'package:responsive_dash_board/widgets/transction_item.dart';

class TransctionItemListView extends StatelessWidget {
  const TransctionItemListView({super.key});

  static const items = [
    TransctionModel(
        title: 'Cash Withdrawal',
        date: '4 November, 2024',
        amount: r'$20,129',
        isWithdrawal: true),
    TransctionModel(
        title: 'Landing Page project',
        date: '4 November, 2024',
        amount: r'$2,000',
        isWithdrawal: false),
    TransctionModel(
        title: 'Juni Mobile App project',
        date: '4 November, 2024',
        amount: r'$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransctionItem(transctionModel: e)).toList(),
    );
    /*return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (contex, index) {
          return TransctionItem(
            transctionModel: items[index],
          );
        });*/
  }
}
