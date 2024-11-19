import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_20/controllers/home_ctr.dart';
import 'package:pas1_mobile_11pplg1_20/model/home_model.dart';

class ProductItemWidget extends StatelessWidget {
  final String idTeam;
  final String strTeam;
  final String strLeague;
  final String strLogo;


  const ProductItemWidget({
    Key? key,
    required this.idTeam,
    required this.strTeam,
    required this.strLeague,
    required this.strLogo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find();
    final teams = Teams(
      idTeam: idTeam,
      strTeam: strTeam,
      strLeague: strLeague,
      strLogo: strLogo,
    );

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            strLogo,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          strTeam,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "ID Team: \${idTeam.(2)}",
              style: TextStyle(fontSize: 14, color: Colors.green),
            ),
            Text(
              "League: $strLeague",
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        trailing: Obx(() {
          return IconButton(
            icon: Icon(
              homeController.isWishlisted(teams)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: homeController.isWishlisted(teams)
                  ? Colors.red
                  : Colors.grey,
            ),
            onPressed: () {
              homeController.toggleWishlist(teams);
            },
          );
        }),
      ),
    );
  }
}
