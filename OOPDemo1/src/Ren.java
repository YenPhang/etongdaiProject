//人类：自定义的数据类型==>>根据类创建对象
public class Ren {
	//属性（特征\变量）：成员变量
	//姓名 年龄  性别
	String name;//引用性，字符串
	int age;
	char sex;//char是字符型，取一个字符，基本类型
	
	//方法（行为）：成员方法
	//自我介绍
	public String showInfo() {
		String info="我叫："+name+";"+age+"岁；性别："+sex;
		return info;
	}
	
}
