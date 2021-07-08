package com.example.demo;

import java.util.Arrays;

/**   给定一个二进制矩阵 A，我们想先水平翻转图像，然后反转图像并返回结果。

 水平翻转图片就是将图片的每一行都进行翻转，即逆序。例如，水平翻转 [1, 1, 0] 的结果是 [0, 1, 1]。

 反转图片的意思是图片中的 0 全部被 1 替换， 1 全部被 0 替换。例如，反转 [0, 1, 1] 的结果是 [1, 0, 0]。
*
* */
public class reserve {
    public static void main(String[] args) {
        int arr[][] = new int[][]{{1,1,0,0},{1,0,0,1},{0,1,1,1},{1,0,1,0}};
//        [[0,1,1,1,1],[0,1,1,0,0],[0,1,1,1,1],[1,0,0,1,0],[0,0,0,0,1]]
        int a[][]=flipAndInvertImage(arr);

    }
    //递归


    public static int[][] flipAndInvertImage(int[][] image) {
        for (int i = 0; i < image.length; i++) {
            arrayReverse(image[i]);
        }
        return image;
    }
    public static int[] arrayReverse(int[] originArray) {
        if(originArray.length==0){
            return originArray;
        }
        if(originArray.length==1){
            originArray[0] = originArray[0]==1?0:1;
            return originArray;
        }
        System.out.println("分隔符----------------");
        System.out.println(Arrays.toString(originArray));
        int temp = 0;
        int length=originArray.length;

        for (int i = 0; i < length/2; i++) {
            temp = originArray[i];
            originArray[i] = originArray[length - i -1]==1?0:1;
            originArray[length - i -1] = temp==1?0:1;

        }
        System.out.println(Arrays.toString(originArray));
        if(length%2==1){
            System.out.println("执行中间数");
            System.out.println(originArray[(length%2) ]);
            originArray[(length/2) ]=  originArray[(length/2) ]==1?0:1;
        }
        System.out.println(Arrays.toString(originArray));
        return originArray;
    }
}