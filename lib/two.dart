import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test1/list_provider.dart';

class HorizontalPage extends StatefulWidget {
  const HorizontalPage({super.key});

  @override
  State<HorizontalPage> createState() => _HorizontalPageState();
}

class _HorizontalPageState extends State<HorizontalPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberListModel, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              numberListModel.add();
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Learning Flutter Provider',
              style: TextStyle(
                color: Colors.purpleAccent,
                fontSize: 20,
              ),
            ),
          ),
          body: Column(children: [
            Text(numberListModel.list.last.toString()),
            SizedBox(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numberListModel.list.length,
                  itemBuilder: (context, index) {
                    return Text(numberListModel.list[index].toString());
                  }),
            ),
          ]),
        );
      },
    );
  }
}
