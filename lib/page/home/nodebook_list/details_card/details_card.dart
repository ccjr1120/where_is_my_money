import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(51, 138, 121, 1),
        border: Border.all(width: 2, color: Colors.white),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        height: 166,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '本月支出(元)',
                    style: TextStyle(
                        color: Color.fromARGB(221, 219, 219, 219),
                        fontSize: 12),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "22,806,00",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '本月收入',
                                style: TextStyle(
                                    color: Color.fromARGB(221, 219, 219, 219),
                                    fontSize: 12),
                              ),
                              Text(
                                '12,000,0000',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '本月结余',
                                style: TextStyle(
                                    color: Color.fromARGB(221, 219, 219, 219),
                                    fontSize: 12),
                              ),
                              Text(
                                '12,000,00',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Expanded(child: Text('Ring')),
                  Container(
                    padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular((25.0))),
                    child: const Text('设置预算',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 138, 121, 1),
                          fontFamily: "Din",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
