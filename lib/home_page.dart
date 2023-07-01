import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shimmer Loading'),
      ),
      backgroundColor: Colors.grey[200],
      body: Shimmer.fromColors(
        baseColor: Colors.grey[350]!,
        highlightColor: Colors.white,
        child: ListView.separated(
            padding: EdgeInsets.all(size.width * 0.035),
            itemBuilder: (context, index) {
              return SizedBox(
                height: 96,
                child: Row(
                  children: [
                    Container(
                      height: 96,
                      width: 96,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: size.height * 0.03,
              );
            },
            itemCount: 10),
      ),
    );
  }
}
