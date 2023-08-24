import 'package:flutter/material.dart';
import 'dart:math';
import 'package:palette_generator/palette_generator.dart';

class Swipper extends StatefulWidget {
  final ValueChanged<int>? onChange;
  final String actionName;
  final ValueChanged<int>? actionHandler;
  final IconData icon;

  final List<Map<String, dynamic>> data;
  const Swipper({
    Key? key,
    required this.onChange,
    required this.actionName,
    required this.actionHandler,
    required this.icon,
    required this.data,
  }) : super(key: key);

  @override
  _SwipperState createState() => _SwipperState();
}

class _SwipperState extends State<Swipper> {
  PageController controller = PageController(initialPage: 0);
  var imgURL = 'https://source.unsplash.com/collection/345710/640x960?' +
      Random().nextInt(1000).toString();
  bool isDarkColor = false;
  Color dynamicColor = Color(0xfff2f2f2);
  Future<Color> getImagePalette(ImageProvider imageProvider) async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(imageProvider);

    if (paletteGenerator.darkVibrantColor == null) {
      setState(() {
        isDarkColor = false;
      });
      return paletteGenerator.dominantColor!.color;
    } else {
      setState(() {
        isDarkColor = true;
      });
      return paletteGenerator.darkVibrantColor!.color;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: PageView.builder(
        controller: controller,
        scrollDirection: Axis.vertical,
        itemCount: widget.data.length,
        onPageChanged: (currentPage) async {
          print('current page $currentPage');
          // var url = 'https://source.unsplash.com/collection/345710/' +
          //     Random().nextInt(1000).toString();
          Color cc = await getImagePalette(
              NetworkImage(widget.data[currentPage]['url']));
          setState(() {
            imgURL = widget.data[currentPage]['url'].toString();
            dynamicColor = cc;
          });
          // widget.onChange!(currentPage);
        },
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.data[index]['url'].toString()),
                // colorFilter: ColorFilter.linearToSrgbGamma(),
              ),
            ),
            child: Container(
                // height: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    // begin: Alignment.bottomCenter,
                    begin: Alignment(0.0, 0.0),
                    end: Alignment(0.0, 0.3),
                    colors: <Color>[
                      dynamicColor.withOpacity(0.1),
                      dynamicColor,
                      // priamary
                      // Colors.blue.withOpacity(0.1),
                      // Colors.blue,
                    ],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            widget.icon,
                            size: 50,
                            color:
                                isDarkColor ? Colors.white54 : Colors.black54,
                          ),
                          // widget.icon,

                          Text(
                            widget.data[index]['title'].toString(),
                            style: TextStyle(
                              fontSize: 25,
                              color:
                                  isDarkColor ? Colors.white54 : Colors.black54,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            widget.data[index]['description'].toString(),
                            style: TextStyle(
                              fontSize: 18,
                              color:
                                  isDarkColor ? Colors.white54 : Colors.black54,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Center(
                            child: ElevatedButton.icon(
                              onPressed: () {
                                widget.actionHandler!(index);
                              },
                              icon: Icon(
                                Icons.shopping_bag_outlined,
                                color: isDarkColor
                                    ? Colors.white54
                                    : Colors.black54,
                              ),
                              label: Text(widget.actionName,
                                  style: TextStyle(
                                    color: isDarkColor
                                        ? Colors.white54
                                        : Colors.black54,
                                  )),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isDarkColor
                                    ? dynamicColor.withOpacity(0.5)
                                    : dynamicColor.withAlpha(100),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
