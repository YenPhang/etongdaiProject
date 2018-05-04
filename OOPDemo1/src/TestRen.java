//测试人类的，创建人类的对象
public class TestRen {
	public static void main(String[]args) {
		//创建对象：类名   对象名=new 类名（）；
		Ren ren1=new Ren();
		//使用对象的属性和方法：对象名.属性        对象名.方法（）
		ren1.age=18;
		ren1.name="zhangsan";
		ren1.sex='男';
		
		/*String s=ren.showInfo();//对象ren调用Ren类的方法showInfo(),showInfo()返回的是String类型，建一个新变量String s接收返回的字符串
		System.out.println(s);*///打印接收了字符串的新变量
		System.out.println(ren1.showInfo());//不新建接收方法返回值的变量，直接打印
		
	
		
		//创建对象：类名   对象名=new 类名（）；
		Ren ren2=new Ren();
		//使用对象的属性和方法：对象名.属性    对象名.方法（）;
		ren2.age=20;
		ren2.name="李四";
		ren2.sex='男';
		
		String s2=ren2.showInfo();
		System.out.println(s2);
	
	}
}
