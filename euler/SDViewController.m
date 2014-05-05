//
//  SDViewController.m
//  euler
//
//  Created by sanket on 2/03/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "SDViewController.h"

@interface SDViewController ()
{
    NSMutableArray *multiples, *arrayofmultiples ,*factors;
    
    BOOL isprimenumber;
    
}
@end

@implementation SDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    //multiples = [[NSMutableArray alloc] init];
    //arrayofmultiples = [[NSMutableArray alloc] init];
    //factors = [[NSMutableArray alloc] init];
    
    //int answer;
    //NSLog(@"Start");
     //answer = [self sumofMultiples];
    //NSLog(@"Problem 1 :  %i", answer);
    //answer = [self problemtwo];
    //NSLog(@"Problem 2 : %i", answer);
    
   
  
   //long long a = [self problemthree];
   
    
//NSLog(@"Problem 3 : %lld", a);
    
  //  NSLog(@"Finished");
    
    
    long long number = 600851475143;
    NSLog(@"Highest Prime factor of: %lli is %lli", number, [self highestPrimeFactorOf: number]);
  
    
  
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)arrayofMultiples
{
    
    
    int x = 1000;
    int i = 0;
    int check = 0;
    int checktwo = 0;
    
    for (i = 0; i < x; i++) {
       
        check = i%3;
        checktwo = i%5;
        
        
        if (check == 0 || checktwo == 0) {
           
            
            [multiples addObject:[NSNumber numberWithInt:i]];
            
        }
        
        
    }
    
       return multiples;
    
}

- (int) sumofMultiples{
    
    arrayofmultiples = [self arrayofMultiples];
    
    int count = [arrayofmultiples count];
       int start = 0;
    int sum = 0;
    
    
    for (start = 0; start < count; start++){
        
        if (start == 0) { sum = [[arrayofmultiples objectAtIndex:start] integerValue];}
        else{sum = sum + [[arrayofmultiples objectAtIndex:start] integerValue];}
    }
    
   
    
    return sum;

}

- (int) sumofMultiples2
{
    
    arrayofmultiples = [self arrayofMultiples];
    
    int count = [arrayofmultiples count];
    int start = 0;
    int sum = 0;
    
    
    for (start = 0; start < count; start++)
    {
        
        if (start == 0)
        {
            sum = [[arrayofmultiples objectAtIndex:start] integerValue];
        }
        else
        {
            sum = sum + [[arrayofmultiples
                          objectAtIndex:start] integerValue];
        }
    }
    
    
    
    return sum;
    
}

- (int) problemtwo{
    int c = 0;
    int d = 1;
    int i = 2;
    int evenumber = 0;
    //int indicator = 0;
    for (i =2; i<=4000000; i++) {
        i = i - 1;
        c = i + d; // when i = 1 , c = 3
             NSLog(@"%i",c);
           d = i + c; // hen i = 1 , d = 5
             NSLog(@"%i",d);
           i = c + d; // New number i will 8
            NSLog(@" %i",i);
        
        if (i%2 == 0) {
            evenumber = i + evenumber;
        }
        if (c%2 == 0) {
            evenumber = c + evenumber;
        }
        if (d%2 == 0) {
            evenumber = d + evenumber;
        }
       
       
          }
    return evenumber;
    
}
- (long long) problemthree
{
    
    // Better way of finding factors of big number is using gnfs algorithm
    
    //long long number = 600851475143;
    long long number = ceill(9 / 2);
    long long answerforthree = 0;
    NSLog(@"Number is: %lli", number);
    for (long long i = 2; i<= number; i++)
    {
        if (number%i == 0)
        {
           // NSLog(@"Factor of %d - %d", number, i);
            
            // There are two checks required , 1) is if number is a factor or not ?  2) is if number is a prime or not ?
            
           
            //long long itcanbeprime = 0;
            BOOL isAPrime = YES;
            
            for (long long x = 2; x<i; x++)
            {
                if (i%x == 0)
                {
                   // NSLog(@"%d definetly Not a prime : %d !!! ", i,x);
                    //itsnotaprime++;
                    isAPrime = NO;
                    break;
                }
               
            }
            
            if ( isAPrime )
            {
                if (i>answerforthree)
                {
                    answerforthree = i;
                }
               // NSLog(@"%lld is a Prime Factor",i);
            }
            
        }
    }
    
        
    return answerforthree;
    
    
}


-(long long)highestPrimeFactorOf:(long long)numberToCheck
{
    long long highestPrimeFactor = 0;
    for(long long i=2; i< numberToCheck; i++)
    {
        if(i > (numberToCheck / 2))
            break;
        
        //check if factor
        if(numberToCheck%i == 0) //if i is a factor
        {
            //go ahead and check if prime
            BOOL iIsPrime = YES;
            for(long long y=2; y<i; y++)
            {
                if(y > (numberToCheck / 2))
                    break;
                
                if(i%y == 0)
                {
                    iIsPrime = NO;
                    break;
                }
            }
            
            if(iIsPrime && i > highestPrimeFactor)
            {
                highestPrimeFactor = i;
            }
        }
    }
    
    return highestPrimeFactor;
}







//-  (IBAction)additionofMultiplesupto: (UITextField *) inputone{
//    
//    
//    int x = [inputone.text intValue];
//    
//    
//    int i = 0;
//    
//    for (i = 0; i <= x; i++) {
//        if (i%3 == 0 || i%5 == 0) {
//            
//            [multiples addObject:[NSNumber numberWithInt:i]];
//          
//        }
//        
//        
//    }
//    
//    NSLog(@"2 All Objects : %@", multiples);
//    
//}
@end
