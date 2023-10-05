
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/app_view_model.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
        builder: (context, viewModel, child) {
          return Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text("Welcome back,",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w400,
                                      color: viewModel.clrLvl4)),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(viewModel.username,
                                  style: TextStyle(
                                      fontSize: 42,
                                      fontWeight: FontWeight.bold,
                                      color: viewModel.clrLvl4)),
                            ),
                          ),
                        )
                      ]),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Icon(Icons.settings),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Icon(Icons.delete),
                    )),
              ]);
        });
  }
}