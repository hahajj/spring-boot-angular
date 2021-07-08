package com.example.demo;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;

/**  给定一个整数数组 prices ，它的第 i 个元素 prices[i] 是一支给定的股票在第 i 天的价格。

 设计一个算法来计算你所能获取的最大利润。你最多可以完成 k 笔交易。

 注意：你不能同时参与多笔交易（你必须在再次购买前出售掉之前的股票）

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-iv
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 *
 * */
public class maxProfit {
    public static void main(String[] args) {
        int[]  prices = {1,4,2,7,2,9};
        maxProfit(2,prices);

    }
    public static int maxProfit(int k, int[] prices) {


        if(prices.length<2||k==0){
            return 0;
        }
        while (k>0&&k<prices.length){
            k--;
        }


//        doNext(k,prices,0);

        return 0;
    }

    public static int doNext(int k,int[] prices,int max) {
        int []ss=new int[prices.length];
        int min=prices[0];
        for(int i=1;i<prices.length;i++){
            if((i==prices.length-1||prices[i]<=prices[i+1])&&prices[i]<=prices[i-1]){
                min=prices[i];
            }
            if((i==prices.length-1||prices[i]>=prices[i+1])&&prices[i]>=prices[i-1]){
                ss[i]=prices[i]-min;
            }
        }
        System.out.println(Arrays.toString(ss));
        Arrays.sort(ss);
        int sum=0;
        int z=1;
        while (z<=k){
            sum+=ss[ss.length-z];
            z++;
        }
        return sum;
    }
}