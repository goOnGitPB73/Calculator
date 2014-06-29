//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Peter Bertelsen on 13/08/12.
//  Copyright (c) 2012 Peter Bertelsen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void) pushOperand: (double)operand;
- (double)performOperation:(NSString *) operation;


@end
