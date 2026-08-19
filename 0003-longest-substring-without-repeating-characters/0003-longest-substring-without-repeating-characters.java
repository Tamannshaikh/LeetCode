class Solution {
    public int lengthOfLongestSubstring(String s) {
     HashSet<Character> charSet = new HashSet<>();

        int left_index = 0;
        int maxLength = 0;

        for (int right_index = 0; right_index < s.length(); right_index++) {

            // jab tak duplicate hai, left move karo
            while (charSet.contains(s.charAt(right_index))) {
                charSet.remove(s.charAt(left_index));
                left_index++;
            }

            // unique character add karo
            charSet.add(s.charAt(right_index));

            // max length update
            maxLength = Math.max(maxLength, right_index - left_index + 1);
        }

        return maxLength;
    }
}