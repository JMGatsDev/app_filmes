import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: Get.width * 0.37,
      height: Get.height * 0.30,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    width: Get.width * 0.37,
                    height: Get.height * 0.23,
                    fit: BoxFit.cover,
                      "https://img.elo7.com.br/product/zoom/2A1A4BF/big-poster-filme-joker-coringa-joaquin-phoenix-lo02-90x60-cm-poster.jpg"),
                ),
              ),
              SizedBox(
                height: Get.height * 0.015,
              ),
              const Text(
                'Coringa ',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const Text(
                '2019 ',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ],
          ),
          Positioned(
            bottom: 50,
            right: -10,
            child: Material(
              elevation: 5,
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: Get.height * 0.04,
                child: IconButton(
                  iconSize: 13,
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}