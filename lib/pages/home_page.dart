import "package:flutter/material.dart";
import '../model/data_two.dart';
import '../model/img_data.dart';
import '/pages/nivel_one.dart';
import '/pages/nivel_two.dart';
//import '../model/img_data.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  /*
  void initState() {
    super.initState();
    pairs = getPairs();
    pairs.shuffle();

    visiblePairs = pairs;

    selectedImg = true;

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        visiblePairs = getQuestions();
        selectedImg = false;
      });
    });
  }
 */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Soul Memoria",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.black),
        child: ListView(
          children: [
            buildCardGif(context),
            buildCardNivelOne(context),
            buildCardNivelTwo(context)
          ],
        ),
      ),
    );
  }
}

Widget buildCardGif(BuildContext context) => Card(
      // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
      child:
          // ignore: sized_box_for_whitespace
          Container(
              height: 100,
              child: Image.asset("assets/images/imagem-animada.gif")

              // child: const Text("Gif Emotion"),

              ),
    );

Widget buildCardNivelOne(BuildContext context) => Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.amber,
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.black],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            const Text(
              "Nivel One",
              style: TextStyle(
                fontSize: 18,
                color: Colors.yellow,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Pontuação$points",
              style: const TextStyle(
                fontSize: 18,
                color: Colors.orange,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                  child: OutlinedButton(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Icon(
                          Icons.add_circle,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NivelOne(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

Widget buildCardNivelTwo(BuildContext context) => Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.amber,
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.black],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            const Text(
              "Nivel Two",
              style: TextStyle(
                fontSize: 18,
                color: Colors.yellow,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Pontuação$pointsN2",
              style: const TextStyle(
                fontSize: 18,
                color: Colors.orange,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                  child: OutlinedButton(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add_circle,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NivelTwo(),
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );







      /*
      body: SingleChildScrollView(

        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
          color: Colors.yellow,

          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),

              points != 900

                  ? Column(
                      children: <Widget>[
                        Text(
                          "$points/900",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const Text(
                          "Pontos",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  : Container(),

              const SizedBox(height: 20),

              points != 900

                  ? GridView(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              mainAxisSpacing: 0.0, maxCrossAxisExtent: 100),
                      children: List.generate(visiblePairs.length, (index) {
                        return Container(
                          color: Colors.black,
                          child: Tile(
                            imageAssetPath: visiblePairs[index].getImg(),
                            tileIndex: index,
                            parent: this,
                          ),
                        );
                      }),
                    )
                  : Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),

                      height: 200,

                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(24),
                      ),

                      // ignore: prefer_const_constructors
                      child: Text(
                        "voçê conseguiu $points/pontos  parabéns!!!!",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue,
                        ),
                      ),

                    ),

            ],
          ),
        ),
      ),
      */
  


/*
// ignore: use_key_in_widget_constructors, must_be_immutable
class Tile extends StatefulWidget {
  String imageAssetPath;

  int tileIndex;
  _HomePageState parent;

  Tile(
      {Key? key,
      required this.imageAssetPath,
      required this.tileIndex,
      required this.parent})
      : super(key: key);

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selectedImg) {
          if (selectedImage != "") {
            if (selectedImage == pairs[widget.tileIndex].getImg()) {
              // corret
              selectedImg = true;
              Future.delayed(const Duration(seconds: 2), () {
                points = points + 100;

                setState(() {});
                selectedImg = false;
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setImage("");

                  pairs[selectedIndex].setImage("");
                });

                selectedImage = "";
              });
            } else {
              // wrong
              selectedImg = true;
              Future.delayed(const Duration(seconds: 2), () {
                selectedImg = false;
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setSelected(false);
                  pairs[selectedIndex].setSelected(false);
                });

                selectedImage = "";
              });
            }
          } else {
            selectedIndex = widget.tileIndex;
            selectedImage = pairs[widget.tileIndex].getImg();
          }

          setState(() {
            pairs[widget.tileIndex].setSelected(true);
          });
        }
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        child: pairs[widget.tileIndex].getImg() != ""
            ? Image.asset(pairs[widget.tileIndex].getSelected()
                ? pairs[widget.tileIndex].getImg()
                : widget.imageAssetPath)
            : Image.asset("assets/images/correct.png"),
      ),
    );
  }
}
*/