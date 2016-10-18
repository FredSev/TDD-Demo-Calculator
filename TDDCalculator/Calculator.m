//
//  Calculator.m
//  TDDCalculator
//
//  Created by Frederic Sevillano on 9/29/16.
//  Copyright © 2016 Frederic Sevillano. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (int)multiply:(NSArray *)valuesToMultiply {
    
    if (!valuesToMultiply || valuesToMultiply.count == 0) {
        return 0;
    } else {
        int result = 1;
        for (int i = 0; i < valuesToMultiply.count; i++) {
            NSNumber *indexedValue = valuesToMultiply[i];
            result *= indexedValue.intValue;
        }
        return result;
    }
}
@end
