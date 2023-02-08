import "package:flutter/material.dart";
import "../model/data_two.dart";

class NivelTwo extends StatefulWidget {
  const NivelTwo({Key? key}) : super(key: key);

  @override
  _NivelTwoState createState() => _NivelTwoState();
}

class _NivelTwoState extends State<NivelTwo> {
  @override
  void initState() {
    super.initState();
    pairsN2 = getPairsN2();
    pairsN2.shuffle();

    visiblePairsN2 = pairsN2;

    selectedImgN2 = true;

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        visiblePairsN2 = getQuestionsN2();
        selectedImgN2 = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nivel Two",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(),
    );
  }
}
