//
//  ViewController.m
//  Project 3 AOC1
//
//  Created by Ronaldo Barnes on 6/13/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Call append function
    stringOne = @"I'm thinking";
    stringTwo = @" I'm getting the hang of this!!!";
    [self appendStringOne:stringOne appendStringTwo:stringTwo];
    
    //Call Add Function
    integerOne = 387;
    integerTwo = 268;
    answer =[self addFirst:integerOne addSecond:integerTwo];
    numberOne = [[NSNumber alloc] initWithInt:answer];
    stringOne = @"The number is ";
    stringTwo = [numberOne stringValue];
    [self appendStringOne:stringOne appendStringTwo:stringTwo];
    
    //Call Compare Function
    integerOne = 50;
    integerTwo = 50;
    numberOne = [[NSNumber alloc] initWithInt:integerOne];
    numberTwo = [[NSNumber alloc] initWithInt:integerTwo];
    compareArray = [NSArray arrayWithObjects:numberOne, numberTwo, nil];
    answer =[self compareFirst:integerOne compareSecond:integerTwo];
    stringOne =[[NSString alloc] initWithFormat:@"%@ = %@",[compareArray objectAtIndex:0],[compareArray objectAtIndex:1]];
    if (answer == 1)
    {
        comparedAnswer = @"is TRUE.";
    }
    else
    {
        comparedAnswer = @"is FALSE.";
    }
    stringTwo = [[NSString alloc] initWithFormat:@" %@", comparedAnswer];
    [self appendStringOne:stringOne appendStringTwo:stringTwo];
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

//Add Function
-(int)addFirst:(NSInteger)numOne addSecond:(NSInteger)numTwo
{
    
    NSInteger addAnswer = numOne + numTwo;
    return addAnswer;
}
//Compare Function
-(int)compareFirst:(NSInteger)numOne compareSecond:(NSInteger)numTwo
{
    if (numOne == numTwo)
    {
        compareAnswer = TRUE;
        
    }
    else {
        compareAnswer = FALSE;
    }
    return compareAnswer;

}
//Append Function
-(void)appendStringOne:(NSString*)firstString appendStringTwo:(NSString*)secondString
{
    appendedString = [[NSMutableString alloc] initWithString: firstString];
    [appendedString appendString: secondString];
    [self DisplayAlertWithString:appendedString];
    
    
       
}
//Display String Function
-(void)DisplayAlertWithString:(NSString*)alertString
{
    
    displayString = [[UIAlertView alloc] initWithTitle:@"Hi" message:alertString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    if (displayString != nil)
    {
        [displayString show];
    }
        
    
    
}
 
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
