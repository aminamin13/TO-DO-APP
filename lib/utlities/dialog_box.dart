// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do_app/utlities/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  DialogBox(
      {super.key,
      required this.textController,
      required this.onSave,
      required this.onCancel});
  TextEditingController textController;

  VoidCallback onSave;

  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {

    return AlertDialog(
        backgroundColor: Colors.yellow[300],
        content: Container(
            height: 200,
            child: Column(
              children: [
                //get user input
                TextFormField(
                  controller: textController,
                  maxLines: 4,
                  minLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Add a new task",
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyButton(
                        text: "Save",
                        onPressed: () {
                          onSave();
                        }),
                    MyButton(
                        text: "Cancel",
                        onPressed: () {
                          onCancel();
                        })
                  ],
                )
              ],
            )));
  }
}
