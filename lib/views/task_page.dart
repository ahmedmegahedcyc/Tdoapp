

import 'package:flutter/material.dart';
import 'package:todoapp/views/task_info_view.dart';
import 'package:todoapp/views/task_list_view.dart';

import 'add_task_view.dart';
import 'header_view.dart';

class TaksPage extends StatelessWidget {
  const TaksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              // Header View
              Expanded(flex: 1, child:

             HeaderView()
              ),

              // Task Info View
              Expanded(flex: 1, child:

              TaskInfoView()
              ),

              // Task List View
              Expanded(flex: 7, child:


           TaskListView(),
              ),
            ],
          ),
        ),
        floatingActionButton:
        const AddTaskView(),
     //

    );

  }
}
