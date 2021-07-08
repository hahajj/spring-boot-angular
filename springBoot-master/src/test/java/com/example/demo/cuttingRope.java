package com.example.demo;

import java.util.Arrays;

/** 给你一根长度为 n 的绳子，请把绳子剪成整数长度的 m 段（m、n都是整数，n>1并且m>1），每段绳子的长度记为 k[0],k[1]...k[m-1] 。请问 k[0]*k[1]*...*k[m-1] 可能的最大乘积是多少？例如，当绳子的长度是8时，我们把它剪成长度分别为2、3、3的三段，此时得到的最大乘积是18。

 示例 1：

 输入: 2
 输出: 1
 解释: 2 = 1 + 1, 1 × 1 = 1
 示例 2:

 输入: 10
 输出: 36
 解释: 10 = 3 + 3 + 4, 3 × 3 × 4 = 36
 *
 * */
public class cuttingRope {
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