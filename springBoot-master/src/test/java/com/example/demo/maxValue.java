package com.example.demo;

import java.util.Arrays;

/** 在一个 m*n 的棋盘的每一格都放有一个礼物，每个礼物都有一定的价值（价值大于 0）。你可以从棋盘的左上角开始拿格子里的礼物，并每次向右或者向下移动一格、直到到达棋盘的右下角。给定一个棋盘及其上面的礼物的价值，请计算你最多能拿到多少价值的礼物？

 示例 1:

 输入:
 [
   [1,3,1],
   [1,5,1],
   [4,2,1]
 ]
 输出: 12
 解释: 路径 1→3→5→2→1 可以拿到最多价值的礼物
 *
 * */
public class maxValue {
    public static void main(String[] args) {
        int[][] prices = {
                {1, 2, 5},
                {3, 2, 5},
                {3, 2, 1}
        };
        System.out.println( maxValue(prices));
    }
    public static int maxValue(int[][] grid) {
        int m = grid.length, n = grid[0].length;
        int[] dp = new int[n + 1];
        for (int i = 1; i <= m; i++) {
            System.out.println("分隔符-----------");
            for (int j = 1; j <= n; j++) {
                dp[j] = Math.max(dp[j], dp[j - 1]) + grid[i - 1][j - 1];
                System.out.println(Arrays.toString(dp));
            }
        }

        return dp[n];
    }
//    public static int maxValue(int[][] grid) {
//        int m = grid.length, n = grid[0].length;
//        for(int x = 0; x < m; x++){
//            for(int y = 0; y < n; y++){
//                if(x == 0 && y == 0) ;
//                else if(x == 0) grid[x][y] += grid[x][y - 1];
//                else if(y == 0) grid[x][y] += grid[x - 1][y];
//                else grid[x][y] += Math.max(grid[x][y - 1], grid[x - 1][y]);
//            }
//        }
//        return grid[m - 1][n - 1];
//    }


}