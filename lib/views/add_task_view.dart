

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/view_model/app_view_model.dart';

import 'bottom_sheets/add_task_bottom_sheet_view.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: ( context , viewModel, child ) {

      return   SizedBox(height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: viewModel.clrLvl3,
                  foregroundColor: viewModel.clrLvl1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
             //   HapticFeedback.heavyImpact();
                viewModel.bottomSheetBuilder(
                     AddTaskBottomSheetView(), context);
              },
              child: const Icon(
              Icons.add,
              size: 30,
            ),
            ),
      ) ;
    } );
  }
}
