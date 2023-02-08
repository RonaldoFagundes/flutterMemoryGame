import "package:flutter/material.dart";
import 'package:memory_game_app/pages/home_page.dart';
import '../model/img_data.dart';

// ignore: use_key_in_widget_constructors
class NivelOne extends StatefulWidget {
  @override
  _NivelOneState createState() => _NivelOneState();
}

class _NivelOneState extends State<NivelOne> {
  @override
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Nivel one",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
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
                    : HomePage(),
                /*
                    Container(),
                const SizedBox(height: 20),
                    */

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
        ));
  }
}

// ignore: use_key_in_widget_constructors, must_be_immutable
class Tile extends StatefulWidget {
  String imageAssetPath;

  int tileIndex;
  _NivelOneState parent;

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
