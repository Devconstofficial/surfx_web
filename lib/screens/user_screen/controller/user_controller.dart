import 'package:get/get.dart';

import '../../../utils/app_colors.dart';

class UserController extends GetxController {
  var selectedUserType = ''.obs;
  List<String> options = ["All", "Active", "Suspended"];
  RxString selectedOption = "".obs;

  void selectOption(String option) {
    selectedOption.value = option;
  }

  void resetSelection() {
    selectedOption.value = "";
  }

  final List<Map<String, dynamic>> allUsers = [
    {"id": "00001", "email": "surfmaster92@gmail.com", "trans": "35", "rating": "4.8", "status": "Suspended", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
    {"id": "00002", "email": "surfmaster92@gmail.com", "trans": "35", "rating": "5.0",  "status": "Active", "statusBackColor": kGreyShade1Color, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00003", "email": "surfmaster92@gmail.com", "trans": "33", "rating": "4.8",  "status": "Suspended", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
    {"id": "00004", "email": "surfmaster92@gmail.com", "trans": "35", "rating": "5.0",  "status": "Suspended", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
    {"id": "00005", "email": "surfmaster92@gmail.com", "trans": "33", "rating": "5.0", "status": "Active", "statusBackColor": kGreyShade1Color, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00006", "email": "surfmaster92@gmail.com", "trans": "35", "rating": "4.8",  "status": "Active", "statusBackColor": kGreyShade1Color, "StatusColor": kGreyShade1Color.withOpacity(0.2)},
    {"id": "00007", "email": "surfmaster92@gmail.com", "trans": "33", "rating": "4.8",  "status": "Suspended", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
    {"id": "00008", "email": "surfmaster92@gmail.com", "trans": "29", "rating": "4.8",  "status": "Suspended", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
    {"id": "00009", "email": "surfmaster92@gmail.com", "trans": "29", "rating": "4.8",  "status": "Suspended", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
    {"id": "00010", "email": "surfmaster92@gmail.com", "trans": "35", "rating": "4.8", "status": "Suspended", "statusBackColor": kBlueColor, "StatusColor": kBlueColor.withOpacity(0.2)},
  ];

  final int itemsPerPage = 7;

  final RxInt currentPage = 1.obs;

  List<Map<String, dynamic>> get currentPageUsers {
    final startIndex = (currentPage.value - 1) * itemsPerPage;
    final endIndex = startIndex + itemsPerPage;
    return allUsers.sublist(
      startIndex,
      endIndex > allUsers.length ? allUsers.length : endIndex,
    );
  }

  int get totalPages => (allUsers.length / itemsPerPage).ceil();

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