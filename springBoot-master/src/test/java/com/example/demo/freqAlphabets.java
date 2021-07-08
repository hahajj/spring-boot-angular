package com.example.demo;

import java.util.Arrays;

/**  给你一个字符串 s，它由数字（'0' - '9'）和 '#' 组成。我们希望按下述规则将 s 映射为一些小写英文字符：

 字符（'a' - 'i'）分别用（'1' - '9'）表示。
 字符（'j' - 'z'）分别用（'10#' - '26#'）表示。
 返回映射之后形成的新字符串。

 题目数据保证映射始终唯一。
 输入：s = "10#11#12"
 输出："jkab"
 解释："j" -> "10#" , "k" -> "11#" , "a" -> "1" , "b" -> "2".
*
* */
public class freqAlphabets {
    public static void main(String[] args) {

    }

//    var freqAlphabets = function(s) {
//        var a=["a","b","c","d","e","f","g","h","i"]
//        var aa=["1","2","3","4","5","6","7","8","9"]
//        var b=["j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
//        var bb=['10#','11#','12#','13#','14#','15#','16#','17#','18#','19#','20#','21#','22#','23#','24#','25#','26#']
//        var strN=""
//        var base=0
//        var flag=s.indexOf("#")
//        while(flag<s.length&&flag>=0){
//            str1=s.slice(base,flag-2)
//            str2=s.slice(flag-2,flag+1)
//            console.log(base,flag)
//            strN+=toaa(str1)
//            strN+=tobb(str2)
//            s=s.slice(flag+1,s.length)
//            flag=s.indexOf("#")
//        }
//
//        strN+=toaa(s)
//
//        return     strN;
//
//        function toaa(v){
//
//        return v.split("").map(i=>{
//        return a[aa.indexOf(i)];
//    }).join("")
//
//    }
//        function tobb(v){
//        return b[bb.indexOf(v)]
//        }
//
//    };

}