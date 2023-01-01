import 'package:hive/hive.dart';
import '../../model/sale.dart';

abstract class LocalInvoiceService {
  LocalInvoiceService._();

  Stream<List<Invoice>> subscribeInvoice();
  Future saveInvoice(List<Invoice> list);
  Future clearInvoice();
  Future<List<Invoice>> getAllInvoice(String invoiceId);
  Future addInvoice(Invoice invoice);
  Future deleteInvoice(String id);
}

class LocalInvoiceServiceImpl implements LocalInvoiceService {
  static final LocalInvoiceServiceImpl _singleton =
      LocalInvoiceServiceImpl._internal();
  LocalInvoiceServiceImpl._internal();
  factory LocalInvoiceServiceImpl() => _singleton;

  Future<Box<Invoice>> box = Hive.openBox<Invoice>("invoice");

  @override
  Stream<List<Invoice>> subscribeInvoice() async* {
    var invoiceBox = await box;
    yield _filterAndSort();
    yield* invoiceBox.watch().map<List<Invoice>>((event) => _filterAndSort());
  }

  List<Invoice> _filterAndSort() {
    var b = Hive.box<Invoice>("invoice");
    var list = b.values.toList();
    list.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    return list;
  }

  @override
  Future saveInvoice(List<Invoice> list) async {
    await (await box).putAll({for (var b in list) b.id: b});
  }

  @override
  Future addInvoice(Invoice invoice) async {
    await (await box).put(invoice.id, invoice);
  }

  @override
  Future clearInvoice() async {
    await (await box).clear();
  }

  @override
  Future<List<Invoice>> getAllInvoice(String ownerId) async {
    var list = (await box)
        .values
        .where((element) => element.owner?.id == ownerId)
        .toList();
    list.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    return list;
  }

  @override
  Future deleteInvoice(String id) async {
    await (await box).delete(id);
  }
}
