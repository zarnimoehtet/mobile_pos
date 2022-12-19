import 'dart:io';

class ItemPhoto {
  ItemPhoto();
  factory ItemPhoto.file(File file) => ItemPhotoFile(file);
  factory ItemPhoto.network(String url) => ItemPhotoNetwork(url);
}

class ItemPhotoFile extends ItemPhoto {
  final File file;
  ItemPhotoFile(this.file) : super();
}

class ItemPhotoNetwork extends ItemPhoto {
  final String url;
  ItemPhotoNetwork(this.url) : super();

  String get fullURL => url;
}
