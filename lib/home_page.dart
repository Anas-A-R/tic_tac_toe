import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tic_tac_toe/game_page.dart';
import 'package:tic_tac_toe/vs_computer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 96, 136, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 10, 26, 71),
        centerTitle: true,
        title: Text(
          "Welcome",
          style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg3.jpg"),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high)),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Tic Tac Toe",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 230,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(color: Colors.yellow, width: 4)),
                      child: GFButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: VsComputer(),
                                  type: PageTransitionType.fade));
                        },
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.userLarge,
                              color: Colors.white,
                              size: 40,
                            ),
                            Text(
                              "VS",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            Icon(
                              FontAwesomeIcons.computer,
                              color: Colors.white,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      width: 230,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(color: Colors.yellow, width: 4)),
                      child: GFButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: Game(),
                                  type: PageTransitionType.fade));
                        },
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.userLarge,
                              color: Colors.white,
                              size: 40,
                            ),
                            Text(
                              "VS",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            Icon(
                              FontAwesomeIcons.userLarge,
                              color: Colors.white,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    "developed by",
                    style: const TextStyle(
                        fontSize: 20, color: Colors.white, letterSpacing: 1),
                  ),
                  Text(
                    "Anas",
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
