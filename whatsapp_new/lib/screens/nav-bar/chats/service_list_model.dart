import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

class ServiceListModel extends StatefulWidget {
  const ServiceListModel({super.key});

  @override
  State<ServiceListModel> createState() => _ServiceListModelState();
}

List<String> options = [
  'React JS',
  'Mangodb',
  'Nest JS',
  'Automation',
  'Manual',
];

class _ServiceListModelState extends State<ServiceListModel> {
  String currentOption = options[0];
  final selectedColor = const Color(0xFF4926A0);
  final unselectedColor = Colors.yellow;

  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/Rectfdgdf.svg',
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Development",
                    style: developmentText,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "React JS",
                        style: cancelbuttontext,
                      ),
                      Text(
                        "React JS",
                        style: dashbordthreecardtext,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        activeColor: selectedColor,
                        value: options[0],
                        groupValue: currentOption,
                        onChanged: (value) {
                          setState(() {
                            currentOption = value.toString();
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mangodb",
                        style: cancelbuttontext,
                      ),
                      Text(
                        "Mangodb",
                        style: dashbordthreecardtext,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        activeColor: selectedColor,
                        value: options[1],
                        groupValue: currentOption,
                        onChanged: (value) {
                          setState(() {
                            currentOption = value.toString();
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nest JS",
                        style: cancelbuttontext,
                      ),
                      Text(
                        "Nest JS",
                        style: dashbordthreecardtext,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        activeColor: selectedColor,
                        value: options[2],
                        groupValue: currentOption,
                        onChanged: (value) {
                          setState(() {
                            currentOption = value.toString();
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "QA",
                    style: developmentText,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Automation",
                        style: cancelbuttontext,
                      ),
                      Text(
                        "Automation",
                        style: dashbordthreecardtext,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        activeColor: selectedColor,
                        value: options[3],
                        groupValue: currentOption,
                        onChanged: (value) {
                          setState(() {
                            currentOption = value.toString();
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Manual",
                        style: cancelbuttontext,
                      ),
                      Text(
                        "Manual",
                        style: dashbordthreecardtext,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        activeColor: selectedColor,
                        value: options[4],
                        groupValue: currentOption,
                        onChanged: (value) {
                          setState(() {
                            currentOption = value.toString();
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tap to select an item",
                    style: contectcardsubtitletext,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
