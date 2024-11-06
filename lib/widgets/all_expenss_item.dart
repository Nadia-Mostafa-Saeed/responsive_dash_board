import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/active_all_expenses_item.dart';
import 'package:responsive_dash_board/widgets/in_active_all_expenses_item.dart';

class AllExpenssItem extends StatelessWidget {
  const AllExpenssItem(
      {super.key, required this.itemModel, required this.isSelected});

  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: InActiveAllExpensesItem(itemModel: itemModel),
      secondChild: ActiveAllExpensesItem(itemModel: itemModel),
      crossFadeState:
          isSelected ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(seconds: 1),
    );
  }
}
