import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winner_picker/try/screen/dialog.dart';

import '../get/varialble.dart'; // Assuming Variables class is defined in variables.dart

class TryGet extends StatelessWidget {
  const TryGet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Variables variables = Get.put(Variables());

    return Scaffold(
      body: Obx(
        () => Column(
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialogs();
                    },
                  );
                },
                child: Text("Click me"),
              ),
            ),
            Text(variables.number.toString()),
            TextButton(
              onPressed: () {
                variables.increment();
              },
              child: Text("Click to increase"),
            ),
           
            Obx(() => Text(
                  'Percentage: ${variables.volumePercentage.value.toStringAsFixed(0)}%',
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}
