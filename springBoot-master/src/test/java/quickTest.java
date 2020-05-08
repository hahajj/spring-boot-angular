
import java.util.Arrays;

public class quickTest {
    public static void main(String[] args) {
        int arr[] = {40, 100, 99, 66, 33, 77, 44, 22, 11, 1, 88, 32, 69, 75,33,77, 21, 38, 43, 56, 23, 12, 87, 60};
        quick(0, arr.length, arr);
        System.out.println(Arrays.toString(arr));
    }

    private static void quick(int i, int j, int[] arr) {//双指针 +数组
        int iflag = i;//起始位置  以起始值为基准值
        int jflag = j;//终点
        while (i < j && j >= 1) {//指针大小必须
            j--;//右侧指针先动
            if (i == j) {//相遇则交换 起始位置与相遇的值 并结束右指针循环 结束本次循环
                int t = arr[iflag];
                arr[iflag] = arr[j];
                arr[j] = t;
                break;
            }
            if (arr[j] <= arr[iflag]) {//右侧指针发现有值比基准值小时  移动左指针
                while (i < j) {
                    i++;
                    if (i == j) {//相遇则交换 起始位置与相遇的值 并结束左指针循环（实际同时进不了右指针下次循环 结束本次循环）
                        int t = arr[iflag];
                        arr[iflag] = arr[j];
                        arr[j] = t;
                        break;
                    }
                    if (arr[i] >= arr[iflag]) {//左侧指针发现有值比基准值大时 和右侧指针值调换 并结束左指针循环
                        int t = arr[i];
                        arr[i] = arr[j];
                        arr[j] = t;
                        break;
                    }
                }
            }
        }
        //分治   j与i 均为分割点
        if (j > iflag + 1) {//若 起始值+1< 分割点  代表 还能继续分治
            quick(iflag, j + 1, arr);
        }
        if (jflag > j + 1) {//若 分割点+1< 终点值  代表 还能继续分治
            quick(j + 1, jflag, arr);
        }
    }
}
