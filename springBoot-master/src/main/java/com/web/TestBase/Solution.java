package com.web.TestBase;

/**
 * Created by 456 on 2019/7/23.
 */
public class Solution {
    public int rob(int[] num) {
        int prev = 0;
        int next = 0;

        for(int x:num){
            int flag=next;
            next=Math.max(prev+x,next);

            prev=flag;
        }
        return next;
    }
}

