import 'package:get/get.dart';

import '../../../utils/app_colors.dart';

class ListingController extends GetxController {
  var selectedListingType = ''.obs;
  var selectedCategory = ''.obs;
  List<String> options = ["All", "Active", "Sold", "Pending Approval"];
  List<String> options1 = ["All", "Shortboard ", "Performance", "Hybrid", "Longboard"];
  RxString selectedOption = "".obs;
  RxString selectedOption1 = "".obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }

  void selectOption1(String option) {
    selectedOption1.value = option;
  }

  void resetSelection() {
    selectedOption.value = "";
    selectedOption1.value = "";
  }

  final List<Map<String, dynamic>> allListings = [
    {"id": "00001", "itemName": "Longboard XL 9'6\"", "category": "Longboard", "price": "300", "location" : "Miami, FL", "status": "Sold", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
    {"id": "00002", "itemName": "Longboard XL 9'6\"", "category": "Hybrid", "price": "300", "location" : "Miami, FL", "status": "Active", "statusBackColor": kGreyShade1Color, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00003", "itemName": "Retro Longboard 8'", "category": "Performance", "price": "300", "location" : "Miami, FL", "status": "Sold", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
    {"id": "00004", "itemName": "Hybrid Board 6'5\"", "category": "Performance", "price": "300", "location" : "Miami, FL", "status": "Sold", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
    {"id": "00005", "itemName": "Longboard XL 9'6\"", "category": "Performance", "price": "300", "location" : "Miami, FL", "status": "Active", "statusBackColor": kGreyShade1Color, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00006", "itemName": "Hybrid Board 6'5\"", "category": "Performance", "price": "300", "location" : "Miami, FL", "status": "Active", "statusBackColor": kGreyShade1Color, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00007", "itemName": "Longboard XL 9'6\"", "category": "Hybrid", "price": "300", "location" : "Miami, FL", "status": "Pending Approval", "statusBackColor": kOrange2Color, "StatusColor": kOrange2Color.withOpacity(0.2)},
    {"id": "00008", "itemName": "Retro Longboard 8'", "category": "Performance", "price": "300", "location" : "Miami, FL", "status": "Sold", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
    {"id": "00009", "itemName": "Longboard XL 9'6\"", "category": "Longboard", "price": "300", "location" : "Miami, FL", "status": "Sold", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
    {"id": "00010", "itemName": "Hybrid Board 6'5\"", "category": "Performance", "price": "300", "location" : "Miami, FL", "status": "Sold", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
  ];

  final int itemsPerPage = 7;

  final RxInt currentPage = 1.obs;

  List<Map<String, dynamic>> get currentPageListings {
    final startIndex = (currentPage.value - 1) * itemsPerPage;
    final endIndex = startIndex + itemsPerPage;
    return allListings.sublist(
      startIndex,
      endIndex > allListings.length ? allListings.length : endIndex,
    );
  }

  int get totalPages => (allListings.length / itemsPerPage).ceil();

  void changePage(int pageNumber) {
    if (pageNumber > 0 && pageNumber <= totalPages) {
      currentPage.value = pageNumber;
    }
  }

  void goToPreviousPage() {
    if (currentPage.value > 1) {
      currentPage.value -= 1;
    }
  }

  void goToNextPage() {
    if (currentPage.value < totalPages) {
      currentPage.value += 1;
    }
  }

  bool get isBackButtonDisabled => currentPage.value == 1;



  bool get isNextButtonDisabled => currentPage.value == totalPages;

}