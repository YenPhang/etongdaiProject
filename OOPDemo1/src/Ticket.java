//创建门票类
public class Ticket {
	//属性
	String name;//姓名
	int age;//年龄
	

	//方法
	public void showMes() {
		if(age>60||age<18) {
			System.out.print(name+"的年龄是："+age+"，门票免费");
		}else {
			System.out.print(name+"的年龄是："+age+"，门票20元");
		}
	}	
}
