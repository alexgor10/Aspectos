package practica.alex;

public aspect tiempo{

	static long startTime;
	
	pointcut callGretting() : call (* HelloAspectJDemo.greeting()); //Pointcuts
	
	before() : callGretting() {  //Advice
		startTime = System.nanoTime(); 
	}
	
	after() : callGretting(){  //Advice
		
		long estimatedTime = System.nanoTime() - startTime; 
		
		System.out.println("\nEl tiempo estimado es "+estimatedTime+" nanosegundos"); 
	}

	
}