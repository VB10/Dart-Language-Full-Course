void main(List<String> args) {
  if ('ali'.isAdmin()) {
    print('object');
  }

  String? name;

  name.isAdmin();
}

// gelmezse bos kabul et
extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}
