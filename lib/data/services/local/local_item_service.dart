import 'package:hive/hive.dart';
import 'package:mobile_pos/data/model/item.dart';

abstract class LocalItemService {
  LocalItemService._();

  Stream<List<Item>> subscribeItem();
  Future saveItem(List<Item> list);
  Future clearItem();
  Future<List<Item>> getAllItem(String invoiceId);
  Future addItem(Item item);
  Future deleteItem(String id);
}

class LocalItemServiceImpl implements LocalItemService {
  static final LocalItemServiceImpl _singleton =
      LocalItemServiceImpl._internal();
  LocalItemServiceImpl._internal();
  factory LocalItemServiceImpl() => _singleton;

  Future<Box<Item>> box = Hive.openBox<Item>("item");

  @override
  Stream<List<Item>> subscribeItem() async* {
    var itemBox = await box;
    yield _filterAndSort();
    yield* itemBox.watch().map<List<Item>>((event) => _filterAndSort());
  }

  List<Item> _filterAndSort() {
    var b = Hive.box<Item>("item");
    var list = b.values.toList();
    list.sort(((a, b) => a.createdAt!.compareTo(b.createdAt!)));
    return list;
  }

  @override
  Future saveItem(List<Item> list) async {
    await (await box).putAll({for (var b in list) b.id: b});
  }

  @override
  Future addItem(Item item) async {
    await (await box).put(item.id, item);
  }

  @override
  Future clearItem() async {
    await (await box).clear();
  }

  @override
  Future<List<Item>> getAllItem(String ownerId) async {
    var list = (await box)
        .values
        .where((element) => element.owner?.id == ownerId)
        .toList();
    list.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    return list;
  }

  @override
  Future deleteItem(String id) async {
    await (await box).delete(id);
  }
}
