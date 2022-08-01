import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp_frontend/riverpod/home_riverpod.dart';
import 'package:flutterapp_frontend/riverpod/riverpod_managment.dart';
import 'package:grock/grock.dart';


class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  void initState() {
    ref.read(homeRiverpod).getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var state = ref.watch(homeRiverpod);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
        ),
      ),
      body: state.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : GrockList(
              itemCount: state.datas.length,
              itemBuilder: (context, index) {
                var item = state.datas[index]!;
                return Card(
                  child: ListTile(
                    title: Text(
                      item.categoryName ?? "",
                    ),
                    subtitle: Text(
                      item.categoryName ?? "",
                    ),
                  ),
                );
              },
            ),
    );
  }
}
