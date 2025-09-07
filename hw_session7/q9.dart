/* Example 1:

Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
Example 2:

Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
Example 3:

Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.*/

bool isPalindrome(String s) {
  s = s.toLowerCase();
  String cleaned = "";
  for (int i = 0; i < s.length; i++) {
    String ch = s[i];
    if (RegExp(r'[a-z0-9]').hasMatch(ch)) {
      cleaned += ch;
    }
  }

  String reversed = "";
  for (int i = cleaned.length - 1; i >= 0; i--) {
    reversed += cleaned[i];
  }

  return cleaned == reversed;
}

void main() {
  print(isPalindrome("A man, a plan, a canal: Panama"));
  print(isPalindrome("race a car"));
  print(isPalindrome(" "));
}
