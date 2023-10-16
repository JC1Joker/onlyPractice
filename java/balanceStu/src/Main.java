
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        double balance = 5000;
        if (verify()) {//验证密码
            getBalance(balance);//计算余额
            balance = withdraw(balance);//输入取款金额
            getBalance(balance);//计算余额
            //系统运行步骤
            //1.用户输入密码，验证密码，正确后输出相应余额
            //2.用户输入取款金额，计算余额
        } else {
            System.out.println("Wrong Password.");
        }
    }

    //
    public static boolean verify() {//验证密码
        int pwd = 111;
        Scanner sc = new Scanner(System.in);
        System.out.println("Please enter your password");
        int user_pwd = sc.nextInt();
        if (user_pwd == pwd) {
            return true;
        } else {
            return false;
        }

        //可简写为
//        return user_pwd == pwd;
    }

    public static void getBalance(double balance) {
        //运算余额
        if (balance <= 5000 && balance > 0) {
            System.out.println("balance " + balance);
        }else{
            System.out.println("No sufficient balance");
        }
    }

    public static double withdraw(double balance) {
        Scanner sc = new Scanner(System.in);
        //提款金额,剩下的金额
        if (balance > 5000) {
            System.out.println("No sufficient balance");

            return 0;
        } else {
            System.out.println("please enter the with drawl amount");//取款金额
//            return balance - sc.nextDouble();
        }
        return balance - sc.nextDouble();
    }

}

