package com.example.demo;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/**
 题目描述
 354. 俄罗斯套娃信封问题
 给你一个二维整数数组 envelopes ，其中 envelopes[i] = [wi, hi] ，表示第 i 个信封的宽度和高度。

 当另一个信封的宽度和高度都比这个信封大的时候，这个信封就可以放进另一个信封里，如同俄罗斯套娃一样。

 请计算 最多能有多少个 信封能组成一组“俄罗斯套娃”信封（即可以把一个信封放到另一个信封里面）。

 注意：不允许旋转信封。


 *
 * */
public class maxEnvelopes {

        /**
         * 倒叙
         * 从下标最大值开始计算最大套娃
        * */
        public static int maxEnvelopes(int[][] envelopes) {
            int max=0;
            int n=envelopes.length;
            int[] acc=new int [n];
            acc[0]=0;
            Arrays.sort(envelopes, Comparator.comparing(x->-x[0]));
            for(int i=1;i<n;i++){
                for(int j=i-1;j>=0;j--){
                    if(envelopes[j][0]>envelopes[i][0]&&envelopes[j][1]>envelopes[i][1]){
                        acc[i]=Math.max(acc[i],acc[j]+1);
                        max=Math.max(max,acc[i]);
                    }
                }
            }
            return  max+1;

        }

//    public static int dfs(int[][] envelopes,int i,int[] acc) {
//        for(int j=i-1;j>=0;j--){
//            if(envelopes[j][0]>envelopes[i][0]&&envelopes[j][1]>envelopes[i][1]){
//                acc[i]=Math.max(acc[i],acc[j]+1);
//            }
//        }
//        return 1;
//    }
    public static void main(String[] args) {
        int[][] envelopes={{1,1},{1,1}};
        System.out.println(maxEnvelopes(envelopes));
    }
}