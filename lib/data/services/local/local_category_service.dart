import 'package:hive/hive.dart';
import 'package:mobile_pos/data/model/category.dart';

abstract class LocalCategoryService {
  LocalCategoryService._();

  Stream<List<Category>> subscribeCategory();
  Future saveCategory(List<Category> list);
  Future clearCategory();
  Future<List<Category>> getAllCategory(String invoiceId);
  Future addCategory(Category category);
  Future deleteCategory(String id);
}

class LocalCategoryServiceImpl implements LocalCategoryService {
  static final LocalCategoryServiceImpl _singleton =
      LocalCategoryServiceImpl._internal();
  LocalCategoryServiceImpl._internal();
  factory LocalCategoryServiceImpl() => _singleton;

  Future<Box<Category>> box = Hive.openBox<Category>("category");

  @override
  Stream<List<Category>> subscribeCategory() async* {
    var categoryBox = await box;
    yield _filterAndSort();
    yield* categoryBox.watch().map<List<Category>>((event) => _filterAndSort());
  }

  List<Category> _filterAndSort() {
    var b = Hive.box<Category>("category");
    var list = b.values.toList();
    list.sort(
        ((a, b) => a.name!.toLowerCase().compareTo(b.name!.toLowerCase())));
    return list;
  }

  @override
  Future saveCategory(List<Category> list) async {
    await (await box).putAll({for (var b in list) b.id: b});
  }

  @override
  Future addCategory(Category category) async {
    await (await box).put(category.id, category);
  }

  @override
  Future clearCategory() async {
    await (await box).clear();
  }

  @override
  Future<List<Category>> getAllCategory(String ownerId) async {
    var list = (await box)
        .values
        .where((element) => element.owner?.id == ownerId)
        .toList();
    list.sort((a, b) => a.name!.toLowerCase().compareTo(b.name!.toLowerCase()));
    return list;
  }

  @override
  Future deleteCategory(String id) async {
    await (await box).delete(id);
  }
}
