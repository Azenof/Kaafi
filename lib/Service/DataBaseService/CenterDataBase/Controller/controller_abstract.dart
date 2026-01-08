abstract class CentralDataBaseControllerAbstract {
  Future<void>getDataList();
  Future<dynamic> supplyDataList(String tableName);
  Future<void>refreshList();
}
