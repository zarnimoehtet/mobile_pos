import 'package:hive/hive.dart';
import 'package:mobile_pos/data/model/unit.dart';

abstract class LocalUnitService {
  LocalUnitService._();

  Stream<List<Unit>> subscribeUnit();
  Future saveUnit(List<Unit> list);
  Future clearUnit();
  Future<List<Unit>> getAllUnit(String invoiceId);
  Future addUnit(Unit unit);
  Future deleteUnit(String id);
}

class LocalUnitServiceImpl implements LocalUnitService {
  static final LocalUnitServiceImpl _singleton =
      LocalUnitServiceImpl._internal();
  LocalUnitServiceImpl._internal();
  factory LocalUnitServiceImpl() => _singleton;

  Future<Box<Unit>> box = Hive.openBox<Unit>("unit");

  @override
  Stream<List<Unit>> subscribeUnit() async* {
    var unitBox = await box;
    yield _filterAndSort();
    yield* unitBox.watch().map<List<Unit>>((event) => _filterAndSort());
  }

  List<Unit> _filterAndSort() {
    var b = Hive.box<Unit>("unit");
    var list = b.values.toList();
    list.sort(
        ((a, b) => a.name!.toLowerCase().compareTo(b.name!.toLowerCase())));
    return list;
  }

  @override
  Future saveUnit(List<Unit> list) async {
    await (await box).putAll({for (var b in list) b.id: b});
  }

  @override
  Future addUnit(Unit unit) async {
    await (await box).put(unit.id, unit);
  }

  @override
  Future clearUnit() async {
    await (await box).clear();
  }

  @override
  Future<List<Unit>> getAllUnit(String ownerId) async {
    var list = (await box)
        .values
        .where((element) => element.owner?.id == ownerId)
        .toList();
    list.sort((a, b) => a.name!.toLowerCase().compareTo(b.name!.toLowerCase()));
    return list;
  }

  @override
  Future deleteUnit(String id) async {
    await (await box).delete(id);
  }
}
