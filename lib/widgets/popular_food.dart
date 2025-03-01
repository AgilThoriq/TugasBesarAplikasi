import 'package:aslab_travel/models/food.dart';
import 'package:flutter/material.dart';

class PopularFood extends StatelessWidget {
  final Food destination;
  const PopularFood({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 20,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.3),
                  spreadRadius: 7,
                  blurRadius: 8,
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            height: 50,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 165,
            width: MediaQuery.of(context).size.width * 0.65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  destination.image![0],
                ),
              ),
            ),
            child: Column(
              children: [
                const Spacer(),
                Container(
                  color: Colors.black.withOpacity(0.7),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Nama Makanan
                            Text(
                              destination.name,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 5),
                            // Lokasi
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  destination.location,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // Rating
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 22,
                              color: Colors.yellow[800],
                            ),
                            const SizedBox(width: 5),
                            Text(
                              destination.rate.toString(),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
