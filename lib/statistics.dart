import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  int selectedRadio = 1;

  void setSelected(int? value) {
    setState(() {
      selectedRadio = value!;
    });
  }

  bool selectDuty = false;
  List<Color> color = [
    Colors.blue,
    Colors.amber,
    Colors.red,
    Colors.yellow,
    Colors.black,
    Colors.purple,
    Colors.brown,
    Colors.green,
    Colors.greenAccent,
    Colors.brown,
    Colors.grey
  ];
  List shift = [
    "Morning",
    "Night",
    "Evening",
    "Free",
    "Afternoon",
    "Night",
    "Night",
    "Afternoon"
  ];
  List count = ['1', '2', '3', '4', '5', '6', '7', '8'];
  List time = [
    '10h,0m',
    '10h,0m',
    '10h,0m',
    '10h,0m',
    '7h,8m',
    '10h,6m',
    '5h,6m',
    '5h,6m'
  ];
  List amount = [
    '0 Rs',
    '0 Rs',
    '0 Rs',
    '0 Rs',
    '0 Rs',
    '5 Rs',
    '4 Rs',
    '5 Rs'
  ];
  List sum = [
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Center(
              child: Text(
                "Statistics",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65.0,
                width: 180.0,
                // color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                    // leading: Text("Current"),
                    title: Text(
                      "Select",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    subtitle: Text(
                      "Month",
                      style: TextStyle(color: Colors.red, fontSize: 16.0),
                    ),
                    trailing: Radio(
                      value: 1,
                      groupValue: selectedRadio,
                      onChanged: setSelected,
                    )),
              ),
              SizedBox(width: 8),
              Container(
                height: 65.0,
                width: 180.0,
                // color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                    // leading: Text("Current"),
                    title: Text(
                      "Current",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    subtitle: Text(
                      "Date Range",
                      style: TextStyle(color: Colors.blue, fontSize: 16.0),
                    ),
                    trailing: Radio(
                        value: 2,
                        groupValue: selectedRadio,
                        onChanged: setSelected)),
              ),
            ],
          ),
          SizedBox(height: 14),
          selectedRadio == 1 ? Container() : Date(),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Shift",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "Count",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "Time",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "Amount",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "Sum",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 300,
                      width: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: shift.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: color[index],
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    shift[index],
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 75,
                      child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 10.5);
                          },
                          itemCount: count.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 25, top: 10),
                              child: Text(count[index]),
                            );
                          }),
                    ),
                    Container(
                      height: 300,
                      width: 75,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ListView.separated(
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(height: 12.5);
                            },
                            itemCount: time.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Text(
                                time[index],
                                style: TextStyle(fontSize: 20),
                              );
                            }),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 75,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12, left: 18),
                        child: ListView.separated(
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(height: 12);
                            },
                            itemCount: amount.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Text(
                                amount[index],
                                style: TextStyle(fontSize: 20),
                              );
                            }),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 75,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(height: 11);
                            },
                            itemCount: sum.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Icon(sum[index]);
                            }),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 65.0,
                width: 180.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    "Total:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "6 Shifts,20h,0m",
                    style: TextStyle(color: Colors.amber[800], fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: 65.0,
                width: 180.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    "Extra Time(Paid):",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "0h,0m",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 65.0,
                width: 180.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    "Extra Time(Unpaid):",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "0h,0m",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: 65.0,
                width: 180.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text(
                    "Total Amount:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "+ 0Rupee",
                    style: TextStyle(color: Colors.purple, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Date extends StatefulWidget {
  const Date({Key? key}) : super(key: key);

  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  String? selectDate = 'Choose Date';
  _openDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1940),
      lastDate: DateTime(2030),
    );
    // ignore: unrelated_type_equality_checks
    if (picked != null) {
      setState(() {
        selectDate =
            "${picked.toLocal().day}/${picked.toLocal().month}/${picked.toLocal().year}";
        // print(date.toString());
        print(selectDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "From",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                ),
                Text("To",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  _openDatePicker(context);
                },
                child: Container(
                  height: 50.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(width: 1),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.date_range_outlined,
                      color: Colors.black,
                      size: 28,
                    ),
                    title: Text(
                      selectDate!,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      _openDatePicker(context);
                    },
                    child: Container(
                      height: 50.0,
                      width: 180.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular((10.0)),
                          border: Border.all(width: 1)),
                      child: ListTile(
                        leading: Icon(
                          Icons.date_range_outlined,
                          color: Colors.black,
                          size: 28,
                        ),
                        title: Text(
                          selectDate!,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
