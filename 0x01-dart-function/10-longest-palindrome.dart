bool isPalindrome(String s) {
  return s == s.split('').reversed.join('');
}

String longestPalindrome(String s) {
  if (s.length < 3) {
    return 'none';
  }
  String longestPal = 'none';
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && (substring.length > longestPal.length || longestPal == 'none')) {
        longestPal = substring;
      }
    }
  }
  return longestPal;
}
