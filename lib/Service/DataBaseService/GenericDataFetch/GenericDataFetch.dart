
import 'package:get/get.dart';
import '../../../DataBase/dataFetch_abstraction.dart';
import '../CenterDataBase/Controller/center_data_base_controller.dart';
import '../CenterDataBase/Database_service.dart';
import 'TableNameRegistry.dart';

class GenericFetch<T> extends FetchData {
  final MainDatabase database;
  final String tableName;
  final TableNameRegistry registry;
  final RxList<T> rxList = <T>[].obs;

  late final CentralDatabaseController centralDatabaseController =
  Get.find<CentralDatabaseController>();

  GenericFetch({
    required this.registry,
    required this.database,
    required super.client,
    required super.adapter,
    required super.controller,
  }) : tableName = registry.getName<T>();

  Future<void> init() async {
    if (!checkMainDatabse(controller)) {
      rxList.value = await fetchData(tableName,database) as List<T>;
    } else {
      rxList.value = centralDatabaseController.supplyDataList(tableName) as List<T>;
    }
  }

  @override
  Future<List?> fetchData(String tableName, MainDatabase database) {
    // TODO: implement fetchData
    return super.fetchData(tableName, database);
  }
  @override
  bool checkMainDatabse(CentralDatabaseController controller) {
    // TODO: implement checkMainDatabse
    return super.checkMainDatabse(controller);
  }
}
