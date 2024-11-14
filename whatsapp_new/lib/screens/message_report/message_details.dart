import 'package:flutter/material.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

class MessageDetails extends StatefulWidget {
  const MessageDetails({super.key});

  @override
  State<MessageDetails> createState() => _MessageDetails();
}

class _MessageDetails extends State<MessageDetails>
    with TickerProviderStateMixin {
  late TabController _tabController;
  // late TabController _tabController;
  Color _indicatorColor = const Color(0xFFFFE7E7); // Default color

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    // Listen for tab changes to update the indicator color
    _tabController.addListener(() {
      setState(() {
        _indicatorColor = _tabController.index == 1
            ? const Color(0xFFEAFFE7) // Green for "Delivered" tab
            : const Color(0xFFFFE7E7); // Default color for "Not Delivered"
      });
    });
  }
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 2, vsync: this);
  //   _tabController.addListener(() {
  //     setState(() {}); // Trigger rebuild to update border color on tab change
  //   });
  // }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: SvgPicture.asset(
            'assets/images/arrow_back_bbb.svg',
            height: 22,
            width: 22,
            fit: BoxFit.none,
          ),
        ),
        title: const GradientText(
          Text(
            "Message Details",
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins'),
          ),
          colors: [
            Color.fromARGB(255, 202, 27, 53),
            Color.fromARGB(255, 202, 27, 53),
            Color.fromARGB(255, 108, 29, 154),
            Color.fromARGB(255, 69, 71, 192),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Individual",
                          style: messagetextind,
                        ),
                        Text(
                          "Sun, 21 Apr 7:30 PM",
                          style: inputboxtextfiles,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Divider(),
                        Text(
                          "bfx_welcome",
                          style: groudcreatetext,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        TextField(
                          // maxLength: 20,
                          maxLines: 6,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            // border: const OutlineInputBorder(

                            //   borderRadius: BorderRadius.all(Radius.circular(6)),
                            //   // borderSide: BorderSide(width: 1),
                            // ),
                            hintText:
                                "Lorem ((1)) dolor sit amet consectetur. Posuere commodo penatibus venenatis dignissim duis auctor. Est integer tempor mauris et nisi mi suscipit elementum ut. Consectetur sed quam pellentesque mauris habitant pellentesque odio. At egestas sit sed quam.",
                            hintStyle: contectcardsubtitletext,

                            helperStyle: inputboxtextfiles,
                          ),
                          style: inputboxtextfiles,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Card.filled(
                            // elevation: 50,
                            // shadowColor: Colors.black,
                            // color: Colors.white,
                            // shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(5.0)),
                            child: Container(
                              height: 100,
                              width: 154,
                              decoration: BoxDecoration(
                                  color:
                                      CustomTextStyling().homesecoundcardcolor,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 23),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "15",
                                      style: reportnumbertext,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Total Message Count",
                                      style: numbersubtext,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Card.filled(
                            // elevation: 50,
                            // shadowColor: Colors.black,
                            // color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Container(
                              height: 100,
                              width: 154,
                              decoration: BoxDecoration(
                                  color: CustomTextStyling().homethardcardcolor,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 23),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "11",
                                      style: reportnumbertext,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Sent Message Count",
                                      style: numbersubtext,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Divider(),
                        Text(
                          "Message Info",
                          style: groudcreatetext,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 370,
                      child: Column(
                        children: [
                          Container(
                              height: 55,
                              color: Colors.white,
                              child: TabBar(
                                controller: _tabController,
                                padding: const EdgeInsets.all(10),
                                unselectedLabelColor: const Color(0xFF1C1B1F),
                                indicatorSize: TabBarIndicatorSize.label,
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: _indicatorColor,
                                ),
                                labelColor: _tabController.index == 1
                                    ? const Color(0xFF167A0E)
                                    : const Color(0xFFF00000),
                                dividerColor: Colors.transparent,
                                tabs: [
                                  Tab(
                                    child: Container(
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Not Delivered',
                                          style: TextStyle(
                                            color: _tabController.index == 0
                                                ? const Color(0xFFF00000)
                                                : const Color(0xFF1C1B1F),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Container(
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Delivered',
                                          style: TextStyle(
                                            color: _tabController.index == 1
                                                ? const Color(0xFF167A0E)
                                                : const Color(0xFF1C1B1F),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          const SizedBox(
                            height: 15,
                          ),
                          Expanded(
                            child: Card.filled(
                              color: Colors.white,
                              shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(2.0),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 241, 238, 238),
                                  width: 1.0,
                                ),
                              ),
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    // physics: const NeverScrollableScrollPhysics(),
                                    // scrollDirection: Axis.vertical,
                                    itemCount: 15,
                                    padding: EdgeInsets.only(top: 15),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, right: 15, top: 0),
                                        // padding: const EdgeInsets.symmetric(
                                        //     vertical: 5, horizontal: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Mukesh Kumar",
                                                style: cardcontactstext),
                                                const SizedBox(height: 1,),
                                            Text("63528 32568",
                                                style: contectcardsubtitletext),
                                            // ListTile(
                                            //     title: ListTile(
                                            //   title: Text("Mukesh Kumar",
                                            //       style: cardcontactstext),
                                            //   subtitle: Text("63528 32568",
                                            //       style: contectcardsubtitletext),
                                            // )),
                                            const Divider(
                                              color: Color(0xFFCDCDCD),
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  // ListView.separated(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       vertical: 0, horizontal: 10),
                                  //   itemCount: 5,
                                  //   separatorBuilder:
                                  //       (BuildContext context, index) =>
                                  //           const Divider(),
                                  //   itemBuilder: (context, index) {
                                  //     return ListTile(
                                  //       title: Text("Mukesh Kumar",
                                  //           style: cardcontactstext),
                                  //       subtitle: Text("63528 32568",
                                  //           style: contectcardsubtitletext),
                                  //     );
                                  //   },
                                  // ),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 15,
                                    padding: EdgeInsets.only(top: 15),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, right: 15, top: 0),
                                        // padding: const EdgeInsets.symmetric(
                                        //     vertical: 5, horizontal: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Mukesh Kumar",
                                                style: cardcontactstext),
                                                const SizedBox(height: 1,),
                                            Text("63528 32568",
                                                style: contectcardsubtitletext),
                                            // ListTile(
                                            //     title: ListTile(
                                            //   title: Text("Mukesh Kumar",
                                            //       style: cardcontactstext),
                                            //   subtitle: Text("63528 32568",
                                            //       style: contectcardsubtitletext),
                                            // )),
                                            const Divider(
                                              color: Color(0xFFCDCDCD),
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  // ListView.separated(
                                  //   padding: const EdgeInsets.all(10),
                                  //   itemCount: 5,
                                  //   separatorBuilder:
                                  //       (BuildContext context, index) =>
                                  //           const Divider(),
                                  //   itemBuilder: (context, index) {
                                  //     return ListTile(
                                  //       title: Text("Mukesh Kumar",
                                  //           style: cardcontactstext),
                                  //       subtitle: Text("63528 32568",
                                  //           style: contectcardsubtitletext),
                                  //     );
                                  //   },
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
