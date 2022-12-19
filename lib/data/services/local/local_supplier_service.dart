import 'package:hive/hive.dart';
import 'package:mobile_pos/data/model/supplier.dart';

abstract class LocalSupplierService {
  LocalSupplierService._();

  Stream<List<Supplier>> subscribeSupplier();
  Future saveSupplier(List<Supplier> list);
  Future clearSupplier();
  Future<List<Supplier>> getAllSupplier(String invoiceId);
  Future addSupplier(Supplier supplier);
  Future deleteSupplier(String id);
}

class LocalSupplierServiceImpl implements LocalSupplierService {
  static final LocalSupplierServiceImpl _singleton =
      LocalSupplierServiceImpl._internal();
  LocalSupplierServiceImpl._internal();
  factory LocalSupplierServiceImpl() => _singleton;

  Future<Box<Supplier>> box = Hive.openBox<Supplier>("supplier");

  @override
  Stream<List<Supplier>> subscribeSupplier() async* {
    var supplierBox = await box;
    yield _filterAndSort();
    yield* supplierBox.watch().map<List<Supplier>>((event) => _filterAndSort());
  }

  List<Supplier> _filterAndSort() {
    var b = Hive.box<Supplier>("Supplier");
    var list = b.values.toList();
    list.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    return list;
  }

  @override
  Future saveSupplier(List<Supplier> list) async {
    await (await box).putAll({for (var b in list) b.id: b});
  }

  @override
  Future addSupplier(Supplier supplier) async {
    await (await box).put(supplier.id, supplier);
  }

  @override
  Future clearSupplier() async {
    await (await box).clear();
  }

  @override
  Future<List<Supplier>> getAllSupplier(String ownerId) async {
    var list = (await box)
        .values
        .where((element) => element.owner?.id == ownerId)
        .toList();
    list.sort((a, b) => a.name!.compareTo(b.name!));
    return list;
  }

  @override
  Future deleteSupplier(String id) async {
    await (await box).delete(id);
  }
}
