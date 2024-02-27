import 'package:flutter/material.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextStyle textWhite = TextStyle(
      color: Colors.white,
    );
    return SizedBox(
      height: size.height * 0.40,
      child: Stack(
        children: [
          // green thingy container
          Container(
            height: size.height * 0.40 - 15,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xFF86E779),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10))),
            // body of its green thingy, (( it's stacked ))
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                const Text(
                  "Hello Farmer, Good Morning!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),

                // body of the after search field, greeny thing background white
                // container
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: TextField(
                    onEditingComplete: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    controller: null,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(16)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.black12, width: 1),
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          color: Colors.lightGreen,
                          onPressed: () {
                            // search disini
                          },
                        ),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: size.height * 0.17,
                  decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    children: [
                      // first column
                      Column(
                        children: [
                          Icon(Icons.connected_tv),
                          Text("Connected"),
                        ],
                      ),

                      // second column
                      Column(
                        children: [
                          Text("Location"),
                          Text("Jember, Indonesia"),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text("Type"),
                          Text("Skillion"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Plants"),
                          Text("Tomatoes"),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text("Size"),
                          Text("4 x 5 cm"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}