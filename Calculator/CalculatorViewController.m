//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Peter Bertelsen on 03/08/12.
//  Copyright (c) 2012 Peter Bertelsen. All rights reserved.
//

#import "CalculatorViewController.h"

/* Hvorfor er interface deklareret her og ikke i header filen? -> Når interface er defineret i implemntations filen er det et _private_ interface (bemærk parentesen). Så for at tilføje en private property skal et private interface deklareres i implementationsfilen
    This is called a Class Extension.
    The concept of “public versus private” in Objective-C is done via
    “header file versus implementation file.”
    You declare public stuff in your header file’s @interface-@end block.
￼￼￼￼    You declare private stuff in your implementation file’s @interface￼￼￼-@end block. */

@interface CalculatorViewController()

@property (nonatomic) BOOL userIsInTheMiddleOfEnteringANumber;

@end


@implementation CalculatorViewController

@synthesize display = _display;
@synthesize userIsInTheMiddleOfEnteringANumber = _userIsInTheMiddleOfEnteringANumber;

- (IBAction)digitPressed:(UIButton *)sender {
    NSString *digit = [sender currentTitle];
    NSLog(@"digit pressed = %@", digit);
    
    if(self.userIsInTheMiddleOfEnteringANumber){
    
    
    UILabel *myDisplay = self.display; //[self display]
    NSString *currentText = myDisplay.text; //[myDisplay text] (dette er getter)
    NSString *newText = [currentText stringByAppendingString:digit];
    myDisplay.text = newText; //[myDisplay setText:newText]; (dette er setter)
    } else {
        
        self.display.text = digit;
        self.userIsInTheMiddleOfEnteringANumber = YES;
    
    }
    
    NSString *der;
    der = @"test";
    
    
}

- (IBAction)enterPressed {
}



- (IBAction)operationPressed:(UIButton *)sender {
    
    
    
}





@end
