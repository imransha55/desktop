interface D1
{
	void t1();
}
interface D2
{
	void t2();
}
class Test implements D1,D2
{
	public void t1()
	{
		System.out.println("Hello");
	}
	public void t2()
	{
		System.out.println("Wellcome To Eidiko");
	}
}
class TwoInterface
{
	public static void main(String...args)
	{
		Test t= new Test();
		t.t1();
		t.t2();
	}
}
	
