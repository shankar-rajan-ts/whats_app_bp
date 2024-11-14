import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SlidableAutoCloseBehavior(
              child: ListView.builder(
                // scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Slidable(
                    enabled: true,
                    closeOnScroll: true,
                    endActionPane: ActionPane(
                      closeThreshold: 0.5,
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                            onPressed: (context) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    insetPadding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Container(
                                      width: MediaQuery.of(context)
                                          .size
                                          .width, // Set full width
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 15),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Edit Group",
                                                      style: groudcreatetext,
                                                    )
                                                  ],
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    // Navigator.pop(context);
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.close_rounded,
                                                        size: 24,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(height: 10,),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Name*",
                                                  style: inputtexttittle,
                                                ),
                                                const SizedBox(
                                                  height: 12,
                                                ),
                                                Column(
                                                  children: [
                                                    TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            const OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          6)),
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFDADADA)),
                                                        ),
                                                        enabledBorder:
                                                            const OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFDADADA)),
                                                        ),
                                                        focusedBorder:
                                                            const OutlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFDADADA)),
                                                        ),

                                                        // borderRadius: BorderRadius.all(Radius.circular(6)),
                                                        // borderSide: BorderSide(width: 1),

                                                        hintText:
                                                            "Blackflux Technologies",
                                                        hintStyle:
                                                            inputboxtextfiles,
                                                        helperStyle:
                                                            inputboxtextfiles,
                                                      ),
                                                      style: inputboxtextfiles,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 124,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      color: const Color(
                                                          0xFFF2F2F2)),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Cancel",
                                                      style: cancelbuttontext,
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
                                                          BorderRadius.circular(
                                                              50),
                                                      color: const Color(
                                                          0xFFFC1683)),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Update",
                                                      style: deletebuttontext,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            // Padding(
                                            //   padding:
                                            //       const EdgeInsets.symmetric(
                                            //           horizontal: 00),
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
                                            //               const Size(124, 40),
                                            //           shape:
                                            //               RoundedRectangleBorder(
                                            //             borderRadius:
                                            //                 BorderRadius
                                            //                     .circular(30),
                                            //             side: BorderSide.none,
                                            //           ),
                                            //           elevation: 0,
                                            //         ),
                                            //         child: Text(
                                            //           "Cancel",
                                            //           style: cancelbuttontext,
                                            //         ),
                                            //       ),
                                            //       ElevatedButton(
                                            //         onPressed: () {
                                            //           // Navigator.of(context).pop();
                                            //           Navigator.pushNamed(
                                            //               context,
                                            //               "/contactsPage");
                                            //         },
                                            //         style: ElevatedButton
                                            //             .styleFrom(
                                            //           backgroundColor:
                                            //               const Color(
                                            //                   0xFFFC1683),
                                            //           minimumSize:
                                            //               const Size(124, 40),
                                            //           shape:
                                            //               RoundedRectangleBorder(
                                            //             borderRadius:
                                            //                 BorderRadius
                                            //                     .circular(30),
                                            //             side: BorderSide.none,
                                            //           ),
                                            //           elevation: 0,
                                            //         ),
                                            //         child: Text(
                                            //           'Update',
                                            //           style: deletebuttontext,
                                            //         ),
                                            //       ),
                                            //     ],
                                            //   ),
                                            // ),
                                            const SizedBox(height: 20),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            icon: Icons.mode_edit_outlined,
                            padding: const EdgeInsets.only(left: 60),
                            foregroundColor: const Color(0xFFFC1683)),
                        SlidableAction(
                          icon: Icons.delete,
                          onPressed: (context) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  insetPadding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    width: MediaQuery.of(context)
                                        .size
                                        .width, // Set full width
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
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
                                                  Navigator.of(context).pop(),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 124,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color:
                                                      const Color(0xFFF2F2F2)),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Cancel",
                                                  style: cancelbuttontext,
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
                                                      BorderRadius.circular(50),
                                                  color:
                                                      const Color(0xFFFC1683)),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Delete",
                                                  style: deletebuttontext,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.symmetric(
                                        //       horizontal: 20),
                                        //   child: Row(
                                        //     mainAxisAlignment:
                                        //         MainAxisAlignment.spaceEvenly,
                                        //     children: [
                                        //       ElevatedButton(
                                        //         onPressed: () {
                                        //           Navigator.pushNamed(
                                        //               context, "/");
                                        //         },
                                        //         style: ElevatedButton.styleFrom(
                                        //           backgroundColor:
                                        //               const Color(0xFFF2F2F2),
                                        //           minimumSize:
                                        //               const Size(124, 35),
                                        //           shape: RoundedRectangleBorder(
                                        //             borderRadius:
                                        //                 BorderRadius.circular(
                                        //                     30),
                                        //             side: BorderSide.none,
                                        //           ),
                                        //           elevation: 0,
                                        //         ),
                                        //         child: Text(
                                        //           "Cancel",
                                        //           style: cancelbuttontext,
                                        //         ),
                                        //       ),
                                        //       ElevatedButton(
                                        //         onPressed: () {
                                        //           // Navigator.of(context).pop();
                                        //           Navigator.pushNamed(
                                        //               context, "/groupPage");
                                        //         },
                                        //         style: ElevatedButton.styleFrom(
                                        //           backgroundColor:
                                        //               const Color(0xFFFC1683),
                                        //           minimumSize:
                                        //               const Size(124, 35),
                                        //           shape: RoundedRectangleBorder(
                                        //             borderRadius:
                                        //                 BorderRadius.circular(
                                        //                     30),
                                        //             side: BorderSide.none,
                                        //           ),
                                        //           elevation: 0,
                                        //         ),
                                        //         child: Text(
                                        //           'Delete',
                                        //           style: deletebuttontext,
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
                          foregroundColor: const Color(0xFFFC1683),
                          borderRadius: BorderRadius.zero,
                        )
                      ],
                    ),
                    child: buildUserListTile([index]),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 32,
            )
          ],
        ),
      ),
      floatingActionButton: RawMaterialButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                insetPadding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width, // Set full width
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Create New Group",
                                  style: groudcreatetext,
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.pop(context);
                                Navigator.of(context).pop();
                              },
                              child: const Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.close_rounded,
                                    size: 24,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // const SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              "Name*",
                              style: inputtexttittle,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6)),
                                      borderSide:
                                          BorderSide(color: Color(0xFFDADADA)),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFDADADA)),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFDADADA)),
                                    ),

                                    // borderRadius: BorderRadius.all(Radius.circular(6)),
                                    // borderSide: BorderSide(width: 1),

                                    hintText: "Enter Group Name",
                                    hintStyle: contectcardsubtitletext,
                                    helperStyle: inputboxtextfiles,
                                  ),
                                  style: inputboxtextfiles,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 40,
                              width: 124,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xFFF2F2F2)),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Cancel",
                                  style: cancelbuttontext,
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
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xFFFC1683)),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Create",
                                  style: deletebuttontext,
                                ),
                              ),
                            )
                          ],
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 00),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     children: [
                        //       ElevatedButton(
                        //         onPressed: () {
                        //           Navigator.pushNamed(context, "/");
                        //         },
                        //         style: ElevatedButton.styleFrom(
                        //           backgroundColor: const Color(0xFFF2F2F2),
                        //           minimumSize: const Size(124, 40),
                        //           shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.circular(30),
                        //             side: BorderSide.none,
                        //           ),
                        //           elevation: 0,
                        //         ),
                        //         child: Text(
                        //           "Cancel",
                        //           style: cancelbuttontext,
                        //         ),
                        //       ),
                        //       ElevatedButton(
                        //         onPressed: () {
                        //           // Navigator.of(context).pop();
                        //           Navigator.pushNamed(context, "/contactsPage");
                        //         },
                        //         style: ElevatedButton.styleFrom(
                        //           backgroundColor: const Color(0xFFFC1683),
                        //           minimumSize: const Size(124, 40),
                        //           shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.circular(30),
                        //             side: BorderSide.none,
                        //           ),
                        //           elevation: 0,
                        //         ),
                        //         child: Text(
                        //           'Create',
                        //           style: deletebuttontext,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        fillColor: Colors.transparent,
        elevation: 0,
        highlightElevation: 0,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        child: SvgPicture.asset(
          'assets/images/Framegroup.svg',
          width: 150,
          height: 60,
        ),
      ),
      // floatingActionButton: Container(
      //   decoration: BoxDecoration(
      //     gradient: const LinearGradient(
      //       // begin: Alignment.topLeft,
      //       // end: Alignment.bottomCenter,
      //       colors: [
      //         // Color(0xFF4825A1).withOpacity(0.9),
      //         // Color(0xFFFC1683).withOpacity(0.9),

      //         // Color(0xFF4825A1).withOpacity(0.9),
      //         // Color.fromARGB(255, 220, 26, 116), // 0% - #FC1683

      //         Color.fromARGB(255, 220, 26, 116), // 0% - #FC1683
      //         Color.fromARGB(255, 66, 29, 158), // 100% - #4825A1
      //         // Color.fromARGB(255, 66, 29, 158), // 100% - #4825A1

      //         // Color(0xFFFC1683).withOpacity(0.9),
      //         // Color(0xFFFC1683).withOpacity(0.8),
      //         // const Color(0xFFFC1683).withOpacity(0.8),
      //         // const Color(0xFFFC1683).withOpacity(0.8),
      //         // const Color(0xFFFC1683).withOpacity(0.8),
      //         // const Color(0xFF4825A1).withOpacity(0.9),
      //         // const Color(0xFF4825A1).withOpacity(0.9),
      //         // const Color(0xFF4825A1).withOpacity(0.9),
      //       ],
      //     ),
      //     borderRadius: BorderRadius.circular(50),
      //   ),

      //   child: FloatingActionButton.extended(
      //     onPressed: () {
      //       showDialog(
      //         context: context,
      //         builder: (BuildContext context) {
      //           return Dialog(
      //             insetPadding: const EdgeInsets.symmetric(horizontal: 10),
      //             child: Container(
      //               width:
      //                   MediaQuery.of(context).size.width, // Set full width
      //               decoration: BoxDecoration(
      //                 color: const Color(0xFFFFFFFF),
      //                 borderRadius: BorderRadius.circular(10.0),
      //               ),
      //               child: Padding(
      //                 padding: const EdgeInsets.symmetric(
      //                     horizontal: 10, vertical: 15),
      //                 child: Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   children: [
      //                     Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       children: [
      //                         Row(
      //                           children: [
      //                             Text(
      //                               "Create New Group",
      //                               style: groudcreatetext,
      //                             )
      //                           ],
      //                         ),
      //                         GestureDetector(
      //                           onTap: () {
      //                             // Navigator.pop(context);
      //                             Navigator.of(context).pop();
      //                           },
      //                           child: const Row(
      //                             children: <Widget>[
      //                               Icon(
      //                                 Icons.close_rounded,
      //                                 size: 24,
      //                               ),
      //                             ],
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         const SizedBox(
      //                           height: 10,
      //                         ),
      //                         Text(
      //                           "Name*",
      //                           style: inputtexttittle,
      //                         ),
      //                         const SizedBox(
      //                           height: 8,
      //                         ),
      //                         Column(
      //                           children: [
      //                             TextField(
      //                               decoration: InputDecoration(
      //                                 border: const OutlineInputBorder(
      //                                   borderRadius: BorderRadius.all(
      //                                       Radius.circular(6)),
      //                                   borderSide: BorderSide(
      //                                       color: Color(0xFFDADADA)),
      //                                 ),
      //                                 enabledBorder: const OutlineInputBorder(
      //                                   borderSide: BorderSide(
      //                                       color: Color(0xFFDADADA)),
      //                                 ),
      //                                 focusedBorder: const OutlineInputBorder(
      //                                   borderSide: BorderSide(
      //                                       color: Color(0xFFDADADA)),
      //                                 ),

      //                                 // borderRadius: BorderRadius.all(Radius.circular(6)),
      //                                 // borderSide: BorderSide(width: 1),

      //                                 hintText: "Enter Group Name",
      //                                 hintStyle: contectcardsubtitletext,
      //                                 helperStyle: inputboxtextfiles,
      //                               ),
      //                               style: inputboxtextfiles,
      //                             ),
      //                           ],
      //                         ),
      //                       ],
      //                     ),
      //                     const SizedBox(
      //                       height: 15,
      //                     ),
      //                     Padding(
      //                       padding:
      //                           const EdgeInsets.symmetric(horizontal: 00),
      //                       child: Row(
      //                         mainAxisAlignment:
      //                             MainAxisAlignment.spaceEvenly,
      //                         children: [
      //                           ElevatedButton(
      //                             onPressed: () {
      //                               Navigator.pushNamed(context, "/");
      //                             },
      //                             style: ElevatedButton.styleFrom(
      //                               backgroundColor: const Color(0xFFF2F2F2),
      //                               minimumSize: const Size(124, 40),
      //                               shape: RoundedRectangleBorder(
      //                                 borderRadius: BorderRadius.circular(30),
      //                                 side: BorderSide.none,
      //                               ),
      //                               elevation: 0,
      //                             ),
      //                             child: Text(
      //                               "Cancel",
      //                               style: cancelbuttontext,
      //                             ),
      //                           ),
      //                           ElevatedButton(
      //                             onPressed: () {
      //                               // Navigator.of(context).pop();
      //                               Navigator.pushNamed(
      //                                   context, "/contactsPage");
      //                             },
      //                             style: ElevatedButton.styleFrom(
      //                               backgroundColor: const Color(0xFFFC1683),
      //                               minimumSize: const Size(124, 40),
      //                               shape: RoundedRectangleBorder(
      //                                 borderRadius: BorderRadius.circular(30),
      //                                 side: BorderSide.none,
      //                               ),
      //                               elevation: 0,
      //                             ),
      //                             child: Text(
      //                               'Create',
      //                               style: deletebuttontext,
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     const SizedBox(height: 20),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           );
      //         },
      //       );
      //     },
      //     backgroundColor: Colors.transparent,
      //     elevation: 10.0,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(50),
      //     ),
      //     label: Text(
      //       'Create Group',
      //       style: sendmessagetext,
      //     ),
      //     icon: const Icon(
      //       Icons.group_add_rounded,
      //       color: Colors.white,
      //       size: 22,
      //     ),
      //     foregroundColor: Colors.black45,
      //   ),
      // )
    );
  }

  Widget buildUserListTile(user) => Builder(
        builder: (context) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.pushNamed(context, "/deleteContactPage");
          },
          child: ListTile(
              contentPadding: const EdgeInsets.all(5),
              leading: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: CircleAvatar(
                  //  radius: 21,
                  child: Container(
                    alignment: Alignment.center,
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 128, 185, 231),
                      color: CustomTextStyling().groupnaemecolor,
                      borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Text(
                      "B",
                      // "${user?['name'][0]}",
                      style: cardheadetext,
                    ),
                  ),
                ),
              ),
              title: Text(
                "Blackflux Technologies",
                // user?['name'],
                style: cardcontactstext,
              ),
              subtitle: Row(
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          const Row(
                            children: [
                              // const Text(
                              //   "Mdfgdfgdfgdfg",
                              //   style: TextStyle(
                              //       fontSize: 11,
                              //       fontWeight: FontWeight.w600,
                              //       color: Colors.white),
                              // ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: const Color(0xFFFFFFFF),
                              ),
                              color: const Color(0xFFA3D2F4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Text(
                              "M",
                              style: roundfonttext,
                            ),
                            // color: Colors.red,
                            // decoration: BoxDecoration(borderRadius: BorderRadius.all(30 as Radius)),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 13),
                                alignment: Alignment.center,
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                  color: const Color(0xFFA3F4BF),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                child: Text(
                                  "V",
                                  style: roundfonttext,
                                ),
                                // color: Colors.red,
                                // decoration: BoxDecoration(borderRadius: BorderRadius.all(30 as Radius)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 27),
                                alignment: Alignment.center,
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                  color: const Color(0xFFF4E7A3),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                child: Text(
                                  "M",
                                  style: roundfonttext,
                                ),
                                // color: Colors.red,
                                // decoration: BoxDecoration(borderRadius: BorderRadius.all(30 as Radius)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 5),
                      Row(children: [
                        Text(
                          "Total Contact : 29",
                          style: contectcardsubtitletext,
                        )
                      ])
                    ],
                  ),
                ],
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(context, "/deleteContactPage");
                // final slidable = Slidable.of(context)!;
                // final isClosed =
                //     slidable.actionPaneType.value == ActionPaneType.none;
                // if (isClosed) {
                //   slidable.openCurrentActionPane();
                // } else {
                //   slidable.close();
                // }
              }),
        ),
      );
}
