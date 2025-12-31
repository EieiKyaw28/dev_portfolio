import 'package:get/get.dart';
import 'package:portfolio/model/project_model.dart';

class ProjectController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt hoveredIndex = (-1).obs;

  void onHover(int index) {
    hoveredIndex.value = index;
  }

  void onExit() {
    hoveredIndex.value = -1;
  }

  void onSelected(int index) {
    selectedIndex.value = index;
  }

  List<ProjectModel> get filteredProjects {
    if (selectedIndex.value == 0) {
      return ProjectModel.projects.where((p) => p.isPersonal != true).toList();
    } else {
      return ProjectModel.projects.where((p) => p.isPersonal == true).toList();
    }
  }
}
