
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_client/ui/blocNews.dart';



class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => NewsScreenState();
}

class NewsScreenState extends State<NewsScreen> {

  int currentIndex = 0;
  bool isTapped = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 0,
          titleSpacing: 20,
          title: Row(
            children: [
              Expanded(
                child: Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFFF2F3F8),
                        borderRadius: BorderRadius.circular(24)
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xFFA3A5A7),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: TextField(
                            onTap: (){
                              isTapped = true;
                              setState(() {

                              });
                            },
                            decoration: InputDecoration(
                                hintText: "Поиск",
                                hintStyle: TextStyle(
                                    color: Color(0xFFA3A5A7)
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFF2F3F8))
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFF2F3F8))

                                )
                            ),
                          ),
                        ),



                      ],
                    )
                ),
              ),
              if (isTapped)
                GestureDetector(
                  onTap: (){isTapped = false;
                  setState(() {

                  });},
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text("Отмена",
                      style: TextStyle(
                          color: Color(0xFF007AFF)
                      ),),
                  ),
                )
            ],
          )),
      body: Column(
        children: [
          const SizedBox(height: 25),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                BlockNews(),
                BlockNews(),
                BlockNews(),
    ],
            ),
          )
        ],
      ),
    );
  }

  GestureDetector listViewSquare() => GestureDetector(
    onTap: () {},
    child: Container(
        margin: const EdgeInsets.only(left: 8),
        width: 98,
        decoration: BoxDecoration(
            color: const Color(0xff1C1C1C),
            borderRadius: BorderRadius.circular(24)
        )
    ),
  );

  GestureDetector listViewButton(String text, int index) => GestureDetector(
      onTap: () {
        currentIndex = index;
        setState(() {});
      },
      child: Container(
          height: 36,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 8),
          padding: const EdgeInsets.only(
              top: 9,
              left: 28,
              right: 28,
              bottom: 7
          ),
          decoration: BoxDecoration(
              color: currentIndex == index
                  ? const Color(0xff1E4BD2)
                  : const Color(0xff71BAFF),
              borderRadius: BorderRadius.circular(80)
          ),
          child: Text(
              text,
              style: TextStyle(
                  color: currentIndex == index
                      ? Colors.white
                      : const Color(0xff1E4BD2)
              )
          )
      )
  );
}
