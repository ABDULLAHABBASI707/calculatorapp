import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _value = "";
  bool _complete = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator App"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Expanded(
                  child: Text(
                    _value,
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _value = "";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.tealAccent),
                        child: const Text(
                          "C",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                            }
                            _value += "/";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.tealAccent),
                        child: const Text(
                          "/",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                            }
                            _value += "*";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.tealAccent),
                        child: const Text(
                          "*",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (!_value.isEmpty)
                              _value = _value.substring(0, _value.length - 1);
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.tealAccent),
                        child: const Icon(
                          Icons.backspace_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                              _value = "";
                            }
                            _value += "7";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.teal),
                        child: const Text(
                          "7",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                              _value = "";
                            }
                            _value += "8";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.teal),
                        child: const Text(
                          "8",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                              _value = "";
                            }
                            _value += "9";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.teal),
                        child: const Text(
                          "9",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                            }
                            _value += "-";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.tealAccent),
                        child: const Icon(
                          Icons.minimize,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(70.0),
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              if (_complete) {
                                _complete = false;
                                _value = "";
                              }
                              _value += "4";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.teal),
                          child: const Text(
                            "4",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        )),
                  ),
                  // Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                              _value = "";
                            }
                            _value += "5";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.teal),
                        child: const Text(
                          "5",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //  Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                              _value = "";
                            }
                            _value += "6";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.teal),
                        child: const Text(
                          "6",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                              _value = "";
                            }
                            _value = "$_value+";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.tealAccent),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(70.0),
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              if (_complete) {
                                _complete = false;
                                _value = "";
                              }
                              _value += "1";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.teal),
                          child: const Text(
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        )),
                  ),
                  // Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                              _value = "";
                            }
                            _value += "2";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.teal),
                        child: const Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                              _value = "";
                            }
                            _value += "3";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.teal),
                        child: const Text(
                          "3",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _complete = true;
                            try {
                              Parser p = Parser();
                              Expression exp = p.parse(_value);
                              ContextModel cm = ContextModel();
                              double ans =
                                  exp.evaluate(EvaluationType.REAL, cm);
                              _value = ans.toString();
                            } on Exception catch (_) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Invalid Expression"),
                                duration: Duration(milliseconds: 2750),
                              ));
                            }
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.tealAccent),
                        child: const Text(
                          "=",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                              _value = "";
                            }
                            _value += "0";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.teal),
                        child: const Text(
                          "0",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Expanded(
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                              _value = "";
                            }
                            _value += ".";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.teal),
                        child: const Text(
                          ".",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                              _value = "";
                            }
                            _value += "00";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.teal),
                        child: const Text(
                          "00",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 65,
                    width: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0),
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if (_complete) {
                              _complete = false;
                            }
                            _value += "%";
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.tealAccent),
                        child: const Icon(
                          Icons.percent_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ),
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
