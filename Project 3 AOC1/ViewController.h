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
    BOOL compareAnswer;   
}
-(void)addFirst:(NSInteger)numOne addSecond:(NSInteger)numTwo;
-(void)compareFirst:(NSInteger)numOne compareSecond:(NSInteger)numTwo;

@end
