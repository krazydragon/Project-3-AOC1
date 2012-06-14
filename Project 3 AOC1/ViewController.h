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
    //Numbers
    NSInteger integerOne;
    NSInteger integerTwo;
    NSInteger answer;
    NSNumber *numberOne;
    NSNumber *numberTwo;
    BOOL compareAnswer;
    //Strings
    NSString *stringOne;
    NSString *stringTwo;
    NSString *comparedAnswer;
    NSMutableString *appendedString;
    //Array
    NSArray *compareArray;
    //Alerts
    UIAlertView *displayString;
    
}
-(int)addFirst:(NSInteger)numOne addSecond:(NSInteger)numTwo;
-(int)compareFirst:(NSInteger)numOne compareSecond:(NSInteger)numTwo;
-(void)appendStringOne:(NSString*)stringOne appendStringTwo:(NSString*)stringTwo;
-(void)DisplayAlertWithString:(NSString*)alertString;
@end
