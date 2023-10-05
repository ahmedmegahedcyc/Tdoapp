
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/view_model/app_view_model.dart';

import '../../model/task_model.dart';

class AddTaskBottomSheetView extends StatelessWidget {
   AddTaskBottomSheetView({super.key});

  final TextEditingController entryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Consumer<AppViewModel>(builder: (context , viewModel , child  ){

      return    Container(
        height: 380,
       child:   Center(
          child: SizedBox(
          height: 280,
            child: TextField(
          onSubmitted: (value) {
        if (entryController.text.isNotEmpty) {
          Task newTask = Task(entryController.text, false);
          viewModel.addTask(newTask);
          entryController.clear();
        }
        Navigator.of(context).pop();
      },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 5),
                  filled: true,
                  fillColor: viewModel.clrLvl2,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          width: 0, style: BorderStyle.none))),
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: viewModel.clrLvl4,
              autofocus: true,
              autocorrect: false,
              controller: entryController,
              style: TextStyle(
                  color: viewModel.clrLvl4, fontWeight: FontWeight.w500)),
       ),

      ),);

    })   ;




  }
}
