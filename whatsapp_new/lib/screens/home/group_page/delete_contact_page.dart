// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

enum Actions { delete, edit }

class DeleteContactPage extends StatefulWidget {
  const DeleteContactPage({super.key});

  @override
  State<DeleteContactPage> createState() => _DeleteContactPage();
}

class _DeleteContactPage extends State<DeleteContactPage> {
  // var users = allUsers;
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
            "Blackflux Technologies",
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
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/chooseContactPage");
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SvgPicture.asset(
                'assets/images/addbtn.svg',
                height: 24,
                width: 24,
                fit: BoxFit.none,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Blackflux Technologies ",
                    style: groudcreatetext,
                  ),
                  Text(
                    "Total Contact : 05",
                    style: dashbordthreecardtext,
                  ),
                ]),
          ),
          SlidableAutoCloseBehavior(
            // closeWhenOpened: true,
            child: ListView.builder(
              // scrollDirection: Axis.vertical,
              shrinkWrap: true,
              // itemCount: users.length,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                // final user = users[index];
                // return buildUserListTile(user);
                return Slidable(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ListTile(
                            leading: CircleAvatar(
                              child: Container(
                                alignment: Alignment.center,
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                  color: CustomTextStyling().contactsnamecolor,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                ),
                                child: Text(
                                  "M",
                                  // "${user?['name'][0]}",
                                  style: cardheadetext,
                                ),
                              ),
                            ),
                            title: Text(
                              "Mukesh Kumar",
                              style: cardcontactstext,
                            ),
                            subtitle: Text(
                              "Ph No: 63528 32568 ",
                              style: contectcardsubtitletext,
                            ),
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          insetPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 10),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width, // Set full width
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFFFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: <Widget>[
                                                    IconButton(
                                                      icon: const Icon(
                                                        Icons.close_rounded,
                                                        size: 24,
                                                        color: Colors.black,
                                                      ),
                                                      onPressed: () =>
                                                          Navigator.of(context)
                                                              .pop(),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 20),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Image.asset(
                                                        "assets/images/image.png",
                                                        height: 120,
                                                        width: 168,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  "Delete Group",
                                                  style: deletetext,
                                                ),
                                                const SizedBox(height: 8),
                                                Text(
                                                  "Are you sure want to delete ?",
                                                  textAlign: TextAlign.center,
                                                  style: numbersubtext,
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      height: 40,
                                                      width: 124,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(50),
                                                          color: const Color(
                                                              0xFFF2F2F2)),
                                                      child: TextButton(
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Cancel",
                                                          style:
                                                              cancelbuttontext,
                                                        ),
                                                      ),
                                                    ),
                                                    // const SizedBox(
                                                    //   width: 10 ,
                                                    // ),
                                                    Container(
                                                      height: 40,
                                                      width: 124,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(50),
                                                          color: const Color(
                                                              0xFFFC1683)),
                                                      child: TextButton(
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Delete",
                                                          style:
                                                              deletebuttontext,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),

                                                // Padding(
                                                //   padding: const EdgeInsets
                                                //       .symmetric(
                                                //       horizontal: 20),
                                                //   child: Row(
                                                //     mainAxisAlignment:
                                                //         MainAxisAlignment
                                                //             .spaceEvenly,
                                                //     children: [
                                                //       ElevatedButton(
                                                //         onPressed: () {
                                                //           Navigator.pushNamed(
                                                //               context, "/");
                                                //         },
                                                //         style: ElevatedButton
                                                //             .styleFrom(
                                                //           backgroundColor:
                                                //               const Color(
                                                //                   0xFFF2F2F2),
                                                //           minimumSize:
                                                //               const Size(
                                                //                   124, 35),
                                                //           shape:
                                                //               RoundedRectangleBorder(
                                                //             borderRadius:
                                                //                 BorderRadius
                                                //                     .circular(
                                                //                         30),
                                                //             side:
                                                //                 BorderSide.none,
                                                //           ),
                                                //           elevation: 0,
                                                //         ),
                                                //         child: Text(
                                                //           "Cancel",
                                                //           style:
                                                //               cancelbuttontext,
                                                //         ),
                                                //       ),
                                                //       ElevatedButton(
                                                //         onPressed: () {
                                                //           // Navigator.of(context).pop();
                                                //           Navigator.pushNamed(
                                                //               context,
                                                //               "/groupPage");
                                                //         },
                                                //         style: ElevatedButton
                                                //             .styleFrom(
                                                //           backgroundColor:
                                                //               const Color(
                                                //                   0xFFFC1683),
                                                //           minimumSize:
                                                //               const Size(
                                                //                   124, 35),
                                                //           shape:
                                                //               RoundedRectangleBorder(
                                                //             borderRadius:
                                                //                 BorderRadius
                                                //                     .circular(
                                                //                         30),
                                                //             side:
                                                //                 BorderSide.none,
                                                //           ),
                                                //           elevation: 0,
                                                //         ),
                                                //         child: Text(
                                                //           'Delete',
                                                //           style:
                                                //               deletebuttontext,
                                                //         ),
                                                //       ),
                                                //     ],
                                                //   ),
                                                // ),
                                                const SizedBox(height: 20),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: SvgPicture.asset(
                                    'assets/images/delete_FILL0.svg',
                                    height: 24,
                                    width: 24,
                                    fit: BoxFit.none,
                                  ),
                                )
                              ],
                            ),
                            onTap: () {
                              final slidable = Slidable.of(context)!;
                              final isClosed = slidable.actionPaneType.value ==
                                  ActionPaneType.none;
                              if (isClosed) {
                                slidable.openCurrentActionPane();
                              } else {
                                slidable.close();
                              }
                            })
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
