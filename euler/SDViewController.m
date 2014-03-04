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
    NSMutableArray *multiples, *arrayofmultiples;
    
    
}
@end

@implementation SDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    multiples = [[NSMutableArray alloc] init];
    arrayofmultiples = [[NSMutableArray alloc] init];
    
    int answer;
    NSLog(@"Start");
     answer = [self sumofMultiples];
    NSLog(@"Problem 1 :  %i", answer);
    answer = [self problemtwo];
    NSLog(@"Problem 2 : %i", answer);
    
    NSLog(@"Finished");
    
    
  
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
        
        if (start == 0) {
            sum = [[arrayofmultiples objectAtIndex:start] integerValue];
        }
        else{
            sum = sum + [[arrayofmultiples objectAtIndex:start] integerValue];
        }
    }
    
   
    
    return sum;

}

- (int) problemtwo{
    int c = 0;
    int d = 0;
    //int indicator = 0;
    for (int i =0; i<9; i++) {
        c = c + i;
       NSLog(@"f number %i",c);
        if (c%2 == 0) {
            d = d + c;
            //NSLog(@"even  numbers %i",d);

        }
    }
    return d;
    
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
