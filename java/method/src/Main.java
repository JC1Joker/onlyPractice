package method.src;// 按两次 Shift 打开“随处搜索”对话框并输入 `show whitespaces`，
// 然后按 Enter 键。现在，您可以在代码中看到空格字符。

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        // 当文本光标位于高亮显示的文本处时按 Alt+Enter，

        //创建一个方法打印100个偶数
//        printEvenNumbers();
//        printoddNumbers();

        //使用方法打印n个偶数，由用户输入
//        Scanner scanner = new Scanner(System.in);
//        int b = scanner.nextInt();
//        printEvenNumbers(b);

        //求n个偶数的和

//        getSum(1, 2);
//        int c = getSum1(1, 2);
//        System.out.println(c);
//        int a = maxNum(2, 5, 6);
//        System.out.println(a);
        int a, b, c;
        Scanner sc = new Scanner(System.in);
        a = sc.nextInt();
        b = sc.nextInt();
        c = sc.nextInt();


        double a1 = svgNum(a, b, c);
        System.out.println(a1);

        double a11, b11, c11;
        a11 = sc.nextDouble();
        b11 = sc.nextDouble();
        c11 = sc.nextDouble();
        double a2 = svgNum(a11, b11, c11);
        System.out.println(a2);

        boolean x = isShui(153);
        System.out.println(x);


    }

    //做一个方法返回两个参数的和
    public static void getSum(int a, int b) {
        System.out.println(a + b);
    }

    public static int getSum1(int a, int b) {
        return a + b;
        //使用return时必须使用print进行打印，否则不显示内容
    }

    public static int maxNum(int a, int b, int c) {
        //求三个最大值
        int max = 0;
        if (a > b) {
            if (a > c) {
                max = a;
            } else {
                max = c;
            }
        } else {
            if (b > c) {
                max = b;
            } else {
                max = c;
            }
        }
        return max;
    }

    //编写一个方法求三个整数的平均值
    public static double svgNum(int a, int b, int c) {

        return (double) (a + b + c) / 3;

    }

    public static double svgNum(double a, double b, double c) {

        double avg = (a + b + c) / 3;

        return avg;

    }

    public static boolean isShui(int x) {
        int a = x % 10;
        int b = x / 10 % 10;
        int c = x / 100;
        if (a * a * a + b * b * b + c * c * c == x) {
            return true;
        } else {
            return false;
        }
//        public static void forIsShui () {
//            for (int i = 100; i < 1000; i++) {
//                if (a * a * a + b * b * b + c * c * c == x) {
//                    System.out.println(i);
//                } else {
//                    break;
//                }
//
//            }
//        }
    }


}





