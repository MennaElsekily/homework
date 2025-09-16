bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;

  var counts = <String, int>{};

  for (var ch in s.split('')) {
    counts[ch] = (counts[ch] ?? 0) + 1;
  }
  for (var ch in t.split('')) {
    if (!counts.containsKey(ch)) return false;
    counts[ch] = counts[ch]! - 1;
    if (counts[ch] == 0) counts.remove(ch);
  }
  return counts.isEmpty;
}

void main() {
  print(isAnagram("anagram", "nagaram"));
  print(isAnagram("rat", "car"));
}
