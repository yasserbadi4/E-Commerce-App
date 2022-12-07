extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return "";
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return 0;
    } else {
      return this!;
    }
  }
}

void test(){
  String? data = "test";
  int? count = 10;
  print(data.orEmpty()); // test
  print(count.orZero()); // 10
}