package com.example.demo;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**  最初在一个记事本上只有一个字符 'A'。你每次可以对这个记事本进行两种操作：

 Copy All (复制全部) : 你可以复制这个记事本中的所有字符(部分的复制是不允许的)。
 Paste (粘贴) : 你可以粘贴你上一次复制的字符。
 给定一个数字 n 。你需要使用最少的操作次数，在记事本中打印出恰好 n 个 'A'。输出能够打印出 n 个 'A' 的最少操作次数。

 示例 1:

 输入: 3
 输出: 3
 解释:
 最初, 我们只有一个字符 'A'。
 第 1 步, 我们使用 Copy All 操作。
 第 2 步, 我们使用 Paste 操作来获得 'AA'。
 第 3 步, 我们使用 Paste 操作来获得 'AAA'。

 *
 * */
public class minSteps {
    public static void main(String[] args) {
       System.out.println( minSteps(100));

    }
    public static int minSteps(int n) {
        if(n==1){
            return 0;
        }
        List<Integer> list = new ArrayList<>();
        list.add(n);
        df(n,list);
        int x=0;
        for (int s : list) {
            x+=s;
        }
        return x;
    }

    public static List<Integer> df(int n,List<Integer> list) {
        for(int i=new Double(Math.sqrt(n)).intValue();i>=1;i--){
            if(n%i==0){
                if(i!=1&&n/i!=1){
                    list.remove(Integer.valueOf(n));
                    list.add(i);
                    list.add(n/i);
                    df(i,list);
                    df(n/i,list);
                }
                break;
            }
        }
        return list;
    }

}