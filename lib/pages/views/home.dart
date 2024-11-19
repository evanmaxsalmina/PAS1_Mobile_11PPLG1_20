import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_20/controllers/home_ctr.dart';
import 'package:pas1_mobile_11pplg1_20/widget/my_button.dart';

class Home extends StatelessWidget {
  final HomeController teamController = Get.put(HomeController());
      

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premier League'),
        backgroundColor: Colors.orange,
      ),
      body: Obx(() {
        
        if (teamController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: teamController.teamList.length,
            itemBuilder: (context, index) {
              final meal = teamController.teamList[index];

              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                margin: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    
                    ClipRRect(
          
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        meal.strLogo,
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              meal.strTeam,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'ID: ${meal.idTeam}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                    ButtonWidget(text: 'Desc', onPressed: (){
                    })
                  ],
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
