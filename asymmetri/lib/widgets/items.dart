import 'package:asymmetri/controllers/getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemControls extends StatelessWidget {
  final MyController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildInputField(
          label: "Total Items",
          onChanged: (value) {
            if (value.isNotEmpty) {
              controller.totalItems.value =
                  int.tryParse(value) ?? controller.totalItems.value;
            }
          },
        ),
        SizedBox(height: 10),
        _buildInputField(
          label: "Items in Line",
          onChanged: (value) {
            if (value.isNotEmpty) {
              controller.itemsPerLine.value =
                  int.tryParse(value) ?? controller.itemsPerLine.value;
            }
          },
        ),
      ],
    );
  }

  Widget _buildInputField({
    required String label,
    required Function(String) onChanged,
  }) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.green),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
      keyboardType: TextInputType.number,
      onChanged: onChanged,
    );
  }
}
