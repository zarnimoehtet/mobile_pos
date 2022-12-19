import 'package:hive/hive.dart';
import 'package:mobile_pos/data/model/employee.dart';

abstract class LocalEmployeeListService {
  LocalEmployeeListService._();

  Stream<List<EmployeeItem>> subscribeEmployeeItem();
  Future saveEmployeeItem(List<EmployeeItem> list);
  Future clearEmployeeItem();
  Future<List<EmployeeItem>> getAllEmployeeItem(String invoiceId);
  Future addEmployeeItem(EmployeeItem empItem);
  Future deleteEmployeeItem(String id);
}

class LocalEmployeeListServiceImpl implements LocalEmployeeListService {
  static final LocalEmployeeListServiceImpl _singleton =
      LocalEmployeeListServiceImpl._internal();
  LocalEmployeeListServiceImpl._internal();
  factory LocalEmployeeListServiceImpl() => _singleton;

  Future<Box<EmployeeItem>> box = Hive.openBox<EmployeeItem>("employees");

  @override
  Stream<List<EmployeeItem>> subscribeEmployeeItem() async* {
    var employeeListBox = await box;
    yield _filterAndSort();
    yield* employeeListBox
        .watch()
        .map<List<EmployeeItem>>((event) => _filterAndSort());
  }

  List<EmployeeItem> _filterAndSort() {
    var b = Hive.box<EmployeeItem>("EmployeeItem");
    var list = b.values.toList();
    list.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    return list;
  }

  @override
  Future saveEmployeeItem(List<EmployeeItem> list) async {
    await (await box).putAll({for (var b in list) b.id: b});
  }

  @override
  Future addEmployeeItem(EmployeeItem employeeItem) async {
    await (await box).put(employeeItem.id, employeeItem);
  }

  @override
  Future clearEmployeeItem() async {
    await (await box).clear();
  }

  @override
  Future<List<EmployeeItem>> getAllEmployeeItem(String ownerId) async {
    var list = (await box)
        .values
        .where((element) => element.owner?.id == ownerId)
        .toList();
    list.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    return list;
  }

  @override
  Future deleteEmployeeItem(String id) async {
    await (await box).delete(id);
  }
}
