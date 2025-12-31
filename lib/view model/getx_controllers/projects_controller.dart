import 'package:get/get.dart';
import 'package:portfolio/model/project_model.dart';

class ProjectController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxList<bool> hovers =
      [false, false, false, false, false, false, false, false, false].obs;

  onHover(int index, bool value) {
    hovers[index] = value;
  }

  onSelected(int index) {
    selectedIndex.value = index;
  }

  List<ProjectModel> get filteredProjects {
    if (selectedIndex.value == 0) {
      // Work Projects
      return ProjectModel.projects.where((p) => p.isPersonal != true).toList();
    } else {
      // Personal Projects
      return ProjectModel.projects.where((p) => p.isPersonal == true).toList();
    }
  }
}
