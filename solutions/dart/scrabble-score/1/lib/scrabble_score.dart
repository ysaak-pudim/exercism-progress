// Put your code here
int score(String input) {
  Map<String, int> values = {
    "AEIOULNRST": 1,
    "DG": 2,
    "BCMP": 3,
    "FHVWY": 4,
    "K": 5,
    "JX": 8,
    "QZ": 10
  };

  int sum = 0;
  
  List<int> list = input.split("").map(
    (c) {
      for (String key in values.keys) {
        if (key.contains(c.toUpperCase())) return values[key] ?? 0;
      }
      return 0;
    }
  ).toList();

  for (int num in list) sum += num;

  return sum;
}