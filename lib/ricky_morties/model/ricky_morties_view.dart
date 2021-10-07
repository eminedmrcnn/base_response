import 'package:base_response/ricky_morties/ricky_morties_view_model.dart';
import 'package:flutter/material.dart';

class RickyMortiesView extends RickyMortiesViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchAllData();
        },
      ),
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: models.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(models[index].image ?? ''),
              ),
              title: Text(models[index].name ?? ''),
            );
          }),
    );
  }
}
