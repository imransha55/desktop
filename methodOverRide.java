class Rbi
{
	int rti(){return 0 ;}
}
class Sbi extends Rbi
{
	int rti(){return 55;}
}
class Hdfc extends Rbi
{
	int rti(){return 88;}
}

class Bank
{
        public static void main(String...args)
        {       
                Sbi s= new Sbi();
                Hdfc h = new Hdfc();
                System.out.println("SBi Interest Rate is"+s.rateOfInterRest());
                System.out.println("Hdfc inerest rate is" +h.rateOfInterRest());
        }       
~}          
