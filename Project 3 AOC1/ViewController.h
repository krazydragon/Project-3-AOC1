//
//  ViewController.h
//  Project 3 AOC1
//
//  Created by Ronaldo Barnes on 6/13/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSInteger addAnswer; 
    NSInteger returnedNumber;
    NSInteger intergerOne;
    NSInteger intergerTwo;
    BOOL compareAnswer;
    NSString *comparedAnswer;
    NSInteger returnedAnswer;
    NSString *compareStringOne;
    NSString *compareStringTwo;
    NSMutableString *appendedString;
    UIAlertView *displayString;
    NSNumber *convertedReturnedNumber;
    NSString *numberString;
    NSArray *compareArray;
    NSNumber *numberOne;
    NSNumber *numberTwo;
}
-(int)addFirst:(NSInteger)numOne addSecond:(NSInteger)numTwo;
-(int)compareFirst:(NSInteger)numOne compareSecond:(NSInteger)numTwo;
-(void)appendStringOne:(NSString*)stringOne appendStringTwo:(NSString*)stringTwo;
-(void)DisplayAlertWithString:(NSString*)alertString;
@end
