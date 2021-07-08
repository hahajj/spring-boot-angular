package com.example.demo;

import java.util.Arrays;

/** 假设把某股票的价格按照时间先后顺序存储在数组中，请问买卖该股票一次可能获得的最大利润是多少？

 *
 * */
public class maxProfit0 {
    public static void main(String[] args) {
        int[]  prices = {7,1,5,3,6,4};
        System.out.println( maxProfit(prices));

    }
    public static int maxProfit(int[] nums) {
        int n=nums.length;
        if(n<=1){
            return 0;
        }
        int [] buy= new int[n];
        int [] sell= new int[n];
        buy[0]=-nums[0];
        sell[0]=0;
        for(int i=1;i<n;i++){
            buy[i]=Math.max(buy[i-1],-nums[i]);
            sell[i]=Math.max(buy[i]+nums[i],sell[i-1]);

        }
        System.out.println(Arrays.toString(sell));
        return sell[n-1];
    }
}