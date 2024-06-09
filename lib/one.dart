import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test1/list_provider.dart';
import 'package:provider_test1/two.dart';

class VerticalPage extends StatefulWidget {
  const VerticalPage({super.key});

  @override
  State<VerticalPage> createState() => _VerticalPageState();
}

class _VerticalPageState extends State<VerticalPage> {
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
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(numberListModel.list.last.toString()),
            Expanded(
              child: ListView.builder(
                  itemCount: numberListModel.list.length,
                  itemBuilder: (context, index) {
                    return Text(numberListModel.list[index].toString());
                  }),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HorizontalPage()));
                },
                child: const Text('Next Page'))
          ]),
        );
      },
    );
  }
}
