import 'package:flutter/material.dart';
import 'package:testflutter/nav.dart';

import '../appbar.dart';

class clubs extends StatelessWidget {
  const clubs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Nav(),
      appBar: mainAppBar("Clubs"),
    );
  }
}
