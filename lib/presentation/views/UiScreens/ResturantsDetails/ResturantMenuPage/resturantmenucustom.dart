



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restoocom/core/constants/colors.dart';
import 'package:restoocom/core/constants/images.dart';

class ResturantMenuCustom extends StatelessWidget {
  const ResturantMenuCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
        physics:
            const NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent:
              MediaQuery.of(context).size.height *
                  0.23,
          mainAxisSpacing: 5,
          crossAxisSpacing: 4,
        ),
        itemBuilder: (context, index) {
          return Flexible(
            child: Container(
              width:
                  MediaQuery.of(context).size.width *
                      0.52,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 5, vertical: 5),
                child: Column(
                  mainAxisSize: MainAxisSize
                      .min, // Allow the column to size based on content
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context)
                              .size
                              .height *
                          0.13,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(5),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              Appimages.chicketkard),
                        ),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context)
                                .size
                                .height *
                            0.004),
                    Text(
                      'Laksa Johar',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(
                              fontSize: 15,
                              fontWeight:
                                  FontWeight.w500),
                    ),
                    Text(
                      'A specialty of the Malaysian Island.',
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context)
                                      .size
                                      .width *
                                  0.022),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                      children: [
                        const Text('RM 17.00'),
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: IconButton(
                              style: IconButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius
                                              .circular(
                                                  5)),
                                  backgroundColor:
                                      AppColors
                                          .background),
                              onPressed: () {},
                              icon: const Center(
                                child: Align(
                                  alignment: Alignment
                                      .center,
                                  child: Icon(
                                    Icons.add,
                                    color:
                                        Colors.black,
                                    size: 12,
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context)
                              .size
                              .height *
                          0.0,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  
  
  
  }
}
