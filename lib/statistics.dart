import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:statistics/screens/date_show.dart';

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
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                "Count",
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                "Time",
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                "Amount",
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                "Sum",
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 23,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0, top: 3.0),
                    child: Text(
                      "Morning",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Text(
                  "2",
                  style: TextStyle(fontSize: 20),
                ),
                Text("10h,0m", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("0 Rupee", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.check),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 23,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0, top: 3.0),
                    child: Text(
                      "Night",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Text(
                  "2",
                  style: TextStyle(fontSize: 20),
                ),
                Text("10h,0m", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("0 Rupee", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.check),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 23,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0, top: 3.0),
                    child: Text(
                      "Holiday",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Text(
                  "2",
                  style: TextStyle(fontSize: 20),
                ),
                Text("10h,0m", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("0 Rupee", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.check),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 23,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0, top: 3.0),
                    child: Text(
                      "Free",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Text(
                  "2",
                  style: TextStyle(fontSize: 20),
                ),
                Text("10h,0m", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("0 Rupee", style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.check),
                )
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
