//
//  SDViewController.h
//  euler
//
//  Created by sanket on 2/03/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *goone;


@property (weak, nonatomic) IBOutlet UITextField *inputone;

@property (weak, nonatomic) IBOutlet UILabel *outputone;

//- (IBAction)additionofMultiplesupto: (UITextField *) inputone;

- (NSMutableArray *) arrayofMultiples;
- (int) sumofMultiples;
- (int) problemtwo;
- (int) problemthree;
@end
