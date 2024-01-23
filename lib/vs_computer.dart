import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tic_tac_toe/home_page.dart';

class VsComputer extends StatefulWidget {
  const VsComputer({super.key});

  @override
  State<VsComputer> createState() => _VsComputerState();
}

class _VsComputerState extends State<VsComputer> {
  IconData ci_11 = Icons.circle_outlined;
  IconData ti_11 = Icons.check_sharp;
  IconData fi_11 = FontAwesomeIcons.xmark;

  IconData ci_12 = Icons.circle_outlined;
  IconData ti_12 = Icons.check_sharp;
  IconData fi_12 = FontAwesomeIcons.xmark;

  IconData ci_13 = Icons.circle_outlined;
  IconData ti_13 = Icons.check_sharp;
  IconData fi_13 = FontAwesomeIcons.xmark;

  IconData ci_21 = Icons.circle_outlined;
  IconData ti_21 = Icons.check_sharp;
  IconData fi_21 = FontAwesomeIcons.xmark;

  IconData ci_22 = Icons.circle_outlined;
  IconData ti_22 = Icons.check_sharp;
  IconData fi_22 = FontAwesomeIcons.xmark;

  IconData ci_23 = Icons.circle_outlined;
  IconData ti_23 = Icons.check_sharp;
  IconData fi_23 = FontAwesomeIcons.xmark;

  IconData ci_31 = Icons.circle_outlined;
  IconData ti_31 = Icons.check_sharp;
  IconData fi_31 = FontAwesomeIcons.xmark;

  IconData ci_32 = Icons.circle_outlined;
  IconData ti_32 = Icons.check_sharp;
  IconData fi_32 = FontAwesomeIcons.xmark;

  IconData ci_33 = Icons.circle_outlined;
  IconData ti_33 = Icons.check_sharp;
  IconData fi_33 = FontAwesomeIcons.xmark;

  Color YourButtonClr = Color.fromARGB(255, 21, 0, 83);
  Color ComputerButtonClr = Colors.grey.withOpacity(0.6);

  bool You = true;
  bool Computer = false;

  bool YouWin = false;
  bool ComputerWin = false;

  bool pause = false;

  bool draw = false;

  bool open_setting = false;

  Color old_clr = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 21, 0, 83),
        title: Text(
          "TIC TAC TOE",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        centerTitle: true,
        leading: null,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg1.jpg"),
                filterQuality: FilterQuality.high,
                fit: BoxFit.fill)),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
//game uper buttons row//////////////////////////////////////////////////
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  child: HomePage(),
                                  type: PageTransitionType.fade));
                        },
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 55,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                pause = true;
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.pause,
                              color: Colors.white,
                              size: 48,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              reset();
                            },
                            child: Icon(
                              FontAwesomeIcons.rotateLeft,
                              color: Colors.white,
                              size: 48,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                open_setting = true;
                              });
                            },
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 48,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: SizedBox(
                    height: 400,
                    width: 400,
                    child: Column(
                      children: [
                        ///////////////////////////////////////////////////////////////////////////////////////////////////////

                        Expanded(
                          child: Row(
                            children: [
                              //R11///////////////////////////////////////////////////////////////////////////////////////////
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (You == true &&
                                          ci_11 == Icons.circle_outlined) {
                                        ci_11 = ti_11;
                                        You = false;
                                        YourButtonClr =
                                            Colors.grey.withOpacity(0.6);
                                        Computer = true;
                                        ComputerButtonClr =
                                            Color.fromARGB(255, 21, 0, 83);
                                        Timer(Duration(seconds: 1), () {
                                          setState(() {
                                            checkEmpty(
                                              fi_11,
                                              fi_12,
                                              fi_13,
                                              fi_21,
                                              fi_22,
                                              fi_23,
                                              fi_31,
                                              fi_32,
                                              fi_32,
                                            );
                                          });
                                        });
                                        checkYouWin();
                                        checkComputerWin();
                                        checkDraw();
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 135,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15)),
                                        border: Border.all(
                                            color:old_clr, width: 5)),
                                    child: Icon(ci_11,
                                        color: old_clr, size: 90),
                                  ),
                                ),
                              ),
                              //R12/////////////////////////////////////////////////////////////////////////////////////////////
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (You == true &&
                                          ci_12 == Icons.circle_outlined) {
                                        ci_12 = ti_12;
                                        You = false;
                                        YourButtonClr =
                                            Colors.grey.withOpacity(0.6);
                                        Computer = true;
                                        ComputerButtonClr =
                                            Color.fromARGB(255, 21, 0, 83);
                                        Timer(Duration(seconds: 1), () {
                                          setState(() {
                                            checkEmpty(
                                              fi_11,
                                              fi_12,
                                              fi_13,
                                              fi_21,
                                              fi_22,
                                              fi_23,
                                              fi_31,
                                              fi_32,
                                              fi_32,
                                            );
                                          });
                                        });
                                        checkYouWin();
                                        checkComputerWin();
                                        checkDraw();
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 135,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color:old_clr, width: 5)),
                                    child: Icon(ci_12,
                                        color:old_clr, size: 90),
                                  ),
                                ),
                              ),
                              //R13/////////////////////////////////////////////////////////////////////////////////////////////
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (You == true &&
                                          ci_13 == Icons.circle_outlined) {
                                        ci_13 = ti_13;
                                        You = false;
                                        YourButtonClr =
                                            Colors.grey.withOpacity(0.6);
                                        Computer = true;
                                        ComputerButtonClr =
                                            Color.fromARGB(255, 21, 0, 83);
                                        Timer(Duration(seconds: 1), () {
                                          setState(() {
                                            checkEmpty(
                                              fi_11,
                                              fi_12,
                                              fi_13,
                                              fi_21,
                                              fi_22,
                                              fi_23,
                                              fi_31,
                                              fi_32,
                                              fi_32,
                                            );
                                          });
                                        });
                                        checkYouWin();
                                        checkComputerWin();
                                        checkDraw();
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 135,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15)),
                                        border: Border.all(
                                            color:old_clr, width: 5)),
                                    child: Icon(ci_13,
                                        color: old_clr, size: 90),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //////////////////////////////////////////////////////////////////////////////////////////////////////

                        Expanded(
                          child: Row(
                            children: [
                              //R21/////////////////////////////////////////////////////////////////////////////////////////////
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (You == true &&
                                        ci_21 == Icons.circle_outlined) {
                                      ci_21 = ti_21;
                                      You = false;
                                      YourButtonClr =
                                          Colors.grey.withOpacity(0.6);
                                      Computer = true;
                                      ComputerButtonClr =
                                          Color.fromARGB(255, 21, 0, 83);
                                      Timer(Duration(seconds: 1), () {
                                        setState(() {
                                          checkEmpty(
                                            fi_11,
                                            fi_12,
                                            fi_13,
                                            fi_21,
                                            fi_22,
                                            fi_23,
                                            fi_31,
                                            fi_32,
                                            fi_32,
                                          );
                                        });
                                      });
                                      checkYouWin();
                                      checkComputerWin();
                                      checkDraw();
                                    }
                                  });
                                },
                                child: Container(
                                  height: 135,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color: old_clr, width: 5)),
                                  child: Icon(ci_21,
                                      color: old_clr, size: 90),
                                ),
                              )),
                              //R22/////////////////////////////////////////////////////////////////////////////////////////////
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (You == true &&
                                        ci_22 == Icons.circle_outlined) {
                                      ci_22 = ti_22;
                                      You = false;
                                      YourButtonClr =
                                          Colors.grey.withOpacity(0.6);
                                      Computer = true;
                                      ComputerButtonClr =
                                          Color.fromARGB(255, 21, 0, 83);
                                      Timer(Duration(seconds: 1), () {
                                        setState(() {
                                          checkEmpty(
                                            fi_11,
                                            fi_12,
                                            fi_13,
                                            fi_21,
                                            fi_22,
                                            fi_23,
                                            fi_31,
                                            fi_32,
                                            fi_32,
                                          );
                                        });
                                      });
                                      checkYouWin();
                                      checkComputerWin();
                                      checkDraw();
                                    }
                                  });
                                },
                                child: Container(
                                  height: 135,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color:old_clr, width: 5)),
                                  child: Icon(ci_22,
                                      color:old_clr, size: 90),
                                ),
                              )),
                              //R23/////////////////////////////////////////////////////////////////////////////////////////////
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (You == true &&
                                        ci_23 == Icons.circle_outlined) {
                                      ci_23 = ti_23;
                                      You = false;
                                      YourButtonClr =
                                          Colors.grey.withOpacity(0.6);
                                      Computer = true;
                                      ComputerButtonClr =
                                          Color.fromARGB(255, 21, 0, 83);
                                      Timer(Duration(seconds: 1), () {
                                        setState(() {
                                          checkEmpty(
                                            fi_11,
                                            fi_12,
                                            fi_13,
                                            fi_21,
                                            fi_22,
                                            fi_23,
                                            fi_31,
                                            fi_32,
                                            fi_32,
                                          );
                                        });
                                      });
                                      checkYouWin();
                                      checkComputerWin();
                                      checkDraw();
                                    }
                                  });
                                },
                                child: Container(
                                  height: 135,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color:old_clr, width: 5)),
                                  child: Icon(ci_23,
                                      color: old_clr, size: 90),
                                ),
                              )),
                            ],
                          ),
                        ),

                        ////////////////////////////////////////////////////////////////////////

                        Expanded(
                          child: Row(
                            children: [
                              //R31//////////////////////////////////////////////////////////////////
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (You == true &&
                                        ci_31 == Icons.circle_outlined) {
                                      ci_31 = ti_31;
                                      You = false;
                                      YourButtonClr =
                                          Colors.grey.withOpacity(0.6);
                                      Computer = true;
                                      ComputerButtonClr =
                                          Color.fromARGB(255, 21, 0, 83);
                                      Timer(Duration(seconds: 1), () {
                                        setState(() {
                                          checkEmpty(
                                            fi_11,
                                            fi_12,
                                            fi_13,
                                            fi_21,
                                            fi_22,
                                            fi_23,
                                            fi_31,
                                            fi_32,
                                            fi_32,
                                          );
                                        });
                                      });
                                      checkYouWin();
                                      checkComputerWin();
                                      checkDraw();
                                    }
                                  });
                                },
                                child: Container(
                                  height: 135,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15)),
                                      border: Border.all(
                                          color:old_clr, width: 5)),
                                  child: Icon(ci_31,
                                      color: old_clr, size: 90),
                                ),
                              )),
                              //R32///////////////////////////////////////////////////////////////////
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (You == true &&
                                        ci_32 == Icons.circle_outlined) {
                                      ci_32 = ti_32;
                                      You = false;
                                      YourButtonClr =
                                          Colors.grey.withOpacity(0.6);
                                      Computer = true;
                                      ComputerButtonClr =
                                          Color.fromARGB(255, 21, 0, 83);
                                      Timer(Duration(seconds: 1), () {
                                        setState(() {
                                          checkEmpty(
                                            fi_11,
                                            fi_12,
                                            fi_13,
                                            fi_21,
                                            fi_22,
                                            fi_23,
                                            fi_31,
                                            fi_32,
                                            fi_32,
                                          );
                                        });
                                      });
                                      checkYouWin();
                                      checkComputerWin();
                                      checkDraw();
                                    }
                                  });
                                },
                                child: Container(
                                  height: 135,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color:old_clr, width: 5)),
                                  child: Icon(ci_32,
                                      color:old_clr, size: 90),
                                ),
                              )),
                              //R33//////////////////////////////////////////////////////////////////////
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (You == true &&
                                        ci_33 == Icons.circle_outlined) {
                                      ci_33 = ti_33;
                                      You = false;
                                      YourButtonClr =
                                          Colors.grey.withOpacity(0.6);
                                      Computer = true;
                                      ComputerButtonClr =
                                          Color.fromARGB(255, 21, 0, 83);
                                      Timer(Duration(seconds: 1), () {
                                        setState(() {
                                          checkEmpty(
                                            fi_11,
                                            fi_12,
                                            fi_13,
                                            fi_21,
                                            fi_22,
                                            fi_23,
                                            fi_31,
                                            fi_32,
                                            fi_32,
                                          );
                                        });
                                      });
                                      checkYouWin();
                                      checkDraw();
                                    }
                                  });
                                },
                                child: Container(
                                  height: 135,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(15)),
                                      border: Border.all(
                                          color: old_clr, width: 5)),
                                  child: Icon(ci_33,
                                      color:old_clr, size: 90),
                                ),
                              )),
                            ],
                          ),
                        ),

                        /////////////////////////////////////////////////////////////////////////////
                      ],
                    ),
                  ),
                ),
//player buttons////////////////////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 100,
                          width: 100,
                          child: GFButton(
                            color: YourButtonClr,
                            onPressed: () {
                              // setState(() {
                              //   YourButtonClr = Color.fromARGB(255, 21, 0, 83);
                              //   ComputerButtonClr =
                              //       Colors.grey.withOpacity(0.6);
                              //   You = true;
                              //   Computer = false;
                              // });
                            },
                            child: Column(
                              children: [
                                //                                 IconData ti_22 = Icons.check_sharp,
                                // IconData fi_22 = FontAwesomeIcons.xmark;
                                Icon(
                                  Icons.check_sharp,
                                  color: Colors.white,
                                  size: 60,
                                ),
                                Text(
                                  "You",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                          height: 100,
                          width: 100,
                          child: GFButton(
                            color: ComputerButtonClr,
                            onPressed: () {
                              // setState(() {
                              //   ComputerButtonClr =
                              //       Color.fromARGB(255, 21, 0, 83);
                              //   YourButtonClr = Colors.grey.withOpacity(0.6);
                              //   You = false;
                              //   Computer = true;
                              // });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  FontAwesomeIcons.xmark,
                                  color: Colors.white,
                                  size: 60,
                                ),
                                Text(
                                  "Computer",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
// player 1 win//////////////////////////////////////////////////////////////////////
            YouWin
                ? Container(
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.7)),
                  )
                : Container(),
            YouWin
                ? Center(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 290,
                      width: 330,
                      decoration: BoxDecoration(
                          color:
                              Color.fromARGB(255, 57, 15, 64).withOpacity(0.9),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: const Color.fromARGB(255, 217, 0, 255),
                              width: 5)),
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.faceSmile,
                            color: Colors.amber,
                            size: 70,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "You Win",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      PageTransition(
                                          child: HomePage(),
                                          type: PageTransitionType.fade));
                                },
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 145, 11, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(
                                          color: Colors.redAccent, width: 4)),
                                  child: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  reset();
                                },
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 28, 64, 29),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(
                                          color: Colors.lime, width: 4)),
                                  child: Icon(
                                    FontAwesomeIcons.rotateLeft,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : Container(),

// Computer win//////////////////////////////////////////////////////////////////////
            ComputerWin
                ? Container(
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.7)),
                  )
                : Container(),
            ComputerWin
                ? Center(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 290,
                      width: 330,
                      decoration: BoxDecoration(
                          color:
                              Color.fromARGB(255, 57, 15, 64).withOpacity(0.9),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: const Color.fromARGB(255, 217, 0, 255),
                              width: 5)),
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.faceSmile,
                            color: Colors.amber,
                            size: 70,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Computer Win",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      PageTransition(
                                          child: HomePage(),
                                          type: PageTransitionType.fade));
                                },
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 145, 11, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(
                                          color: Colors.redAccent, width: 4)),
                                  child: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  reset();
                                },
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 28, 64, 29),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(
                                          color: Colors.lime, width: 4)),
                                  child: Icon(
                                    FontAwesomeIcons.rotateLeft,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : Container(),
//pause//////////////////////////////////////////////////////////////////////////////
            pause
                ? Container(
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.7)),
                  )
                : Container(),
            pause
                ? Center(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 290,
                      width: 330,
                      decoration: BoxDecoration(
                          color:
                              Color.fromARGB(255, 57, 15, 64).withOpacity(0.9),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: const Color.fromARGB(255, 217, 0, 255),
                              width: 5)),
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.faceSmile,
                            color: Colors.amber,
                            size: 70,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Paused",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      PageTransition(
                                          child: HomePage(),
                                          type: PageTransitionType.fade));
                                },
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 145, 11, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(
                                          color: Colors.redAccent, width: 4)),
                                  child: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    pause = false;
                                  });
                                },
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 28, 64, 29),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(
                                          color: Colors.lime, width: 4)),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : Container(),
//draw////////////////////////////////////////////////////////////////////////////
            draw
                ? Container(
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.7)),
                  )
                : Container(),
            draw
                ? Center(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 290,
                      width: 330,
                      decoration: BoxDecoration(
                          color:
                              Color.fromARGB(255, 57, 15, 64).withOpacity(0.9),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: const Color.fromARGB(255, 217, 0, 255),
                              width: 5)),
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.faceSmile,
                            color: Colors.amber,
                            size: 70,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Draw",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      PageTransition(
                                          child: HomePage(),
                                          type: PageTransitionType.fade));
                                },
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 145, 11, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(
                                          color: Colors.redAccent, width: 4)),
                                  child: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  reset();
                                },
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 28, 64, 29),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(
                                          color: Colors.lime, width: 4)),
                                  child: Icon(
                                    FontAwesomeIcons.rotateLeft,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : Container(),
//setting//////////////////////////////////////////////////////////////////////////////
            open_setting
                ? Container(
                    padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.7)),
                  )
                : Container(),
            open_setting
                ? Center(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 290,
                      width: 330,
                      decoration: BoxDecoration(
                          color:
                              Color.fromARGB(255, 57, 15, 64).withOpacity(0.9),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: const Color.fromARGB(255, 217, 0, 255),
                              width: 5)),
                      child: Column(
                        children: [
                          Text(
                            "Setting",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Change Color",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        old_clr = Colors.white;
                                        open_setting = false;
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 101, 101, 101),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          border: Border.all(
                                              color: Colors.white, width: 4)),
                                      child: Center(
                                        child: Text(
                                          "White",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        old_clr = Colors.green;
                                        open_setting = false;
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 28, 64, 29),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          border: Border.all(
                                              color: Colors.lime, width: 4)),
                                      child: Center(
                                        child: Text(
                                          "Green",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        old_clr = Colors.yellow;
                                        open_setting = false;
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 179, 161, 8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 227, 253, 0),
                                              width: 4)),
                                      child: Center(
                                        child: Text(
                                          "Yellow",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        old_clr = Colors.blue;
                                        open_setting = false;
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 22, 93, 151),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 115, 188, 247),
                                              width: 4)),
                                      child: Center(
                                        child: Text(
                                          "Blue",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        old_clr = Colors.orange;
                                        open_setting = false;
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 191, 117, 5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 255, 212, 147),
                                              width: 4)),
                                      child: Center(
                                        child: Text(
                                          "Orange",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        old_clr = Colors.lime;
                                        open_setting = false;
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 99, 107, 28),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 225, 250, 1),
                                              width: 4)),
                                      child: Center(
                                        child: Text(
                                          "Lime",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  bool checkDraw() {
    if (ci_11 != Icons.circle_outlined &&
        ci_12 != Icons.circle_outlined &&
        ci_13 != Icons.circle_outlined &&
        ci_21 != Icons.circle_outlined &&
        ci_22 != Icons.circle_outlined &&
        ci_23 != Icons.circle_outlined &&
        ci_31 != Icons.circle_outlined &&
        ci_32 != Icons.circle_outlined &&
        ci_23 != Icons.circle_outlined) {
      draw = true;
    }
    return true;
  }

  bool checkYouWin() {
    if (ci_11 == ti_11 && ci_12 == ti_12 && ci_13 == ti_13 ||
        ci_21 == ti_21 && ci_22 == ti_22 && ci_23 == ti_23 ||
        ci_31 == ti_31 && ci_32 == ti_32 && ci_33 == ti_33 ||
        ci_11 == ti_11 && ci_21 == ti_21 && ci_31 == ti_31 ||
        ci_12 == ti_12 && ci_22 == ti_22 && ci_32 == ti_32 ||
        ci_13 == ti_13 && ci_23 == ti_23 && ci_33 == ti_33 ||
        ci_11 == ti_11 && ci_22 == ti_22 && ci_33 == ti_33 ||
        ci_13 == ti_13 && ci_22 == ti_22 && ci_31 == ti_31) {
      YouWin = true;
    }
    return true;
  }

  bool checkComputerWin() {
    if (ci_11 == fi_11 && ci_12 == fi_12 && ci_13 == fi_13 ||
        ci_21 == fi_21 && ci_22 == fi_22 && ci_23 == fi_23 ||
        ci_31 == fi_31 && ci_32 == fi_32 && ci_33 == fi_33 ||
        ci_11 == fi_11 && ci_21 == fi_21 && ci_31 == fi_31 ||
        ci_12 == fi_12 && ci_22 == fi_22 && ci_32 == fi_32 ||
        ci_13 == fi_13 && ci_23 == fi_23 && ci_33 == fi_33 ||
        ci_11 == fi_11 && ci_22 == fi_22 && ci_33 == fi_33 ||
        ci_13 == fi_13 && ci_22 == fi_22 && ci_31 == fi_31) {
      ComputerWin = true;
    }
    return true;
  }

  bool reset() {
    if (ci_11 == ti_11 || ci_11 == fi_11) {
      ci_11 = Icons.circle_outlined;
    }
    if (ci_12 == ti_12 || ci_12 == fi_12) {
      ci_12 = Icons.circle_outlined;
    }
    if (ci_13 == ti_13 || ci_13 == fi_13) {
      ci_13 = Icons.circle_outlined;
    }
    if (ci_21 == ti_21 || ci_21 == fi_21) {
      ci_21 = Icons.circle_outlined;
    }
    if (ci_22 == ti_22 || ci_22 == fi_22) {
      ci_22 = Icons.circle_outlined;
    }
    if (ci_23 == ti_23 || ci_23 == fi_23) {
      ci_23 = Icons.circle_outlined;
    }
    if (ci_31 == ti_31 || ci_31 == fi_31) {
      ci_31 = Icons.circle_outlined;
    }
    if (ci_32 == ti_32 || ci_32 == fi_32) {
      ci_32 = Icons.circle_outlined;
    }
    if (ci_33 == ti_33 || ci_33 == fi_33) {
      ci_33 = Icons.circle_outlined;
    }
    setState(() {
      draw = false;
      YouWin = false;
      ComputerWin = false;
      You = true;
      Computer = false;
      YourButtonClr = Color.fromARGB(255, 21, 0, 83);
      ComputerButtonClr = Colors.grey.withOpacity(0.6);
      print("set state may nhi ja rha");
    });
    print("set state may nhi ja rha");
    return true;
  }

  bool checkEmpty(
    IconData newIcon11,
    IconData newIcon12,
    IconData newIcon13,
    IconData newIcon21,
    IconData newIcon22,
    IconData newIcon23,
    IconData newIcon31,
    IconData newIcon32,
    IconData newIcon33,
  ) {
    if (Computer == true && ci_22 == Icons.circle_outlined) {
      ci_22 = newIcon22;
      checkComputerWin();
      checkDraw();
      setState(() {
        Computer = false;
        ComputerButtonClr = Colors.grey.withOpacity(0.6);
        You = true;
        YourButtonClr = Color.fromARGB(255, 21, 0, 83);
      });
    }
    if (Computer == true && ci_11 == Icons.circle_outlined) {
      ci_11 = newIcon11;
      checkComputerWin();
      checkDraw();
      setState(() {
        Computer = false;
        ComputerButtonClr = Colors.grey.withOpacity(0.6);
        You = true;
        YourButtonClr = Color.fromARGB(255, 21, 0, 83);
      });
    }
    if (Computer == true && ci_33 == Icons.circle_outlined) {
      ci_33 = newIcon33;
      checkComputerWin();
      checkDraw();
      setState(() {
        Computer = false;
        ComputerButtonClr = Colors.grey.withOpacity(0.6);
        You = true;
        YourButtonClr = Color.fromARGB(255, 21, 0, 83);
      });
    }
    if (Computer == true && ci_21 == Icons.circle_outlined) {
      ci_21 = newIcon21;
      checkComputerWin();
      checkDraw();
      setState(() {
        Computer = false;
        ComputerButtonClr = Colors.grey.withOpacity(0.6);
        You = true;
        YourButtonClr = Color.fromARGB(255, 21, 0, 83);
      });
    }
    if (Computer == true && ci_23 == Icons.circle_outlined) {
      ci_23 = newIcon23;
      checkComputerWin();
      checkDraw();
      setState(() {
        Computer = false;
        ComputerButtonClr = Colors.grey.withOpacity(0.6);
        You = true;
        YourButtonClr = Color.fromARGB(255, 21, 0, 83);
      });
    }
    if (Computer == true && ci_12 == Icons.circle_outlined) {
      ci_12 = newIcon12;
      checkComputerWin();
      checkDraw();
      setState(() {
        Computer = false;
        ComputerButtonClr = Colors.grey.withOpacity(0.6);
        You = true;
        YourButtonClr = Color.fromARGB(255, 21, 0, 83);
      });
    }
    if (Computer == true && ci_32 == Icons.circle_outlined) {
      ci_32 = newIcon32;
      checkComputerWin();
      checkDraw();
      setState(() {
        Computer = false;
        ComputerButtonClr = Colors.grey.withOpacity(0.6);
        You = true;
        YourButtonClr = Color.fromARGB(255, 21, 0, 83);
      });
    }
    if (Computer == true && ci_31 == Icons.circle_outlined) {
      ci_31 = newIcon31;
      checkComputerWin();
      checkDraw();
      setState(() {
        Computer = false;
        ComputerButtonClr = Colors.grey.withOpacity(0.6);
        You = true;
        YourButtonClr = Color.fromARGB(255, 21, 0, 83);
      });
    }

    if (Computer == true && ci_13 == Icons.circle_outlined) {
      ci_13 = newIcon13;
      checkComputerWin();
      checkDraw();
      setState(() {
        Computer = false;
        ComputerButtonClr = Colors.grey.withOpacity(0.6);
        You = true;
        YourButtonClr = Color.fromARGB(255, 21, 0, 83);
      });
    }

    return true;
  }
}
