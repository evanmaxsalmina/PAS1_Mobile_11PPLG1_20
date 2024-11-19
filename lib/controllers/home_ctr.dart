import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg1_20/model/home_model.dart';
import 'package:pas1_mobile_11pplg1_20/service/home_service.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;
  var teamList= <Teams>[].obs;
  var wishlist = <Teams>[].obs; 

  @override
  void onInit() {
    fetchMeals();
    super.onInit();
  }

  void fetchMeals() async {
    try {
      isLoading(true);
      var teamsData = await ProductService().fetchTeams();
      var teams = teamsData.map((data) => Teams.fromJson(data)).toList();
      teamList.assignAll(teams);
    } finally {
      isLoading(false);
    }
  }

   void toggleWishlist(Teams teams) {
    if (isWishlisted(teams)) {
      wishlist.remove(teams); 
    } else {
      wishlist.add(teams); 
    }
  }

  bool isWishlisted(Teams teams) {
    return wishlist.any((item) => item.idTeam == item.idTeam);
  }
}
