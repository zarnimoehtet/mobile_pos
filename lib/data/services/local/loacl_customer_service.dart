import 'package:hive/hive.dart';

import '../../model/customer.dart';

abstract class LocalCustomerService {
  LocalCustomerService._();

  Stream<List<Customer>> subscribeCustomer();
  Future saveCustomer(List<Customer> list);
  Future clearCustomer();
  Future<List<Customer>> getAllCustomer(String invoiceId);
  Future addCustomer(Customer customer);
  Future deleteCustomer(String id);
}

class LocalCustomerServiceImpl implements LocalCustomerService {
  static final LocalCustomerServiceImpl _singleton =
      LocalCustomerServiceImpl._internal();
  LocalCustomerServiceImpl._internal();
  factory LocalCustomerServiceImpl() => _singleton;

  Future<Box<Customer>> box = Hive.openBox<Customer>("customer");

  @override
  Stream<List<Customer>> subscribeCustomer() async* {
    var customerBox = await box;
    yield _filterAndSort();
    yield* customerBox.watch().map<List<Customer>>((event) => _filterAndSort());
  }

  List<Customer> _filterAndSort() {
    var b = Hive.box<Customer>("Customer");
    var list = b.values.toList();
    list.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    return list;
  }

  @override
  Future saveCustomer(List<Customer> list) async {
    await (await box).putAll({for (var b in list) b.id: b});
  }

  @override
  Future addCustomer(Customer customer) async {
    await (await box).put(customer.id, customer);
  }

  @override
  Future clearCustomer() async {
    await (await box).clear();
  }

  @override
  Future<List<Customer>> getAllCustomer(String ownerId) async {
    var list = (await box)
        .values
        .where((element) => element.owner?.id == ownerId)
        .toList();
    list.sort((a, b) => a.name!.compareTo(b.name!));
    return list;
  }

  @override
  Future deleteCustomer(String id) async {
    await (await box).delete(id);
  }
}
