class Solution {
    fun solution(angle: Int): Int {
        if (angle < 90) return 1;
        if (angle == 90) return 2;
        if (angle == 180) return 4;
        return 3;
    }
}