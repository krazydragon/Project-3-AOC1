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
    [self appendStringOne:@"I'm thinking" appendStringTwo:@" I'm getting the hang of this!!!"];
    
    //Call Add Function
    returnedNumber =[self addFirst:257 addSecond:68];
    convertedReturnedNumber = [[NSNumber alloc] initWithInt:returnedNumber];
    numberString = [convertedReturnedNumber stringValue];
    [self appendStringOne:@"The number is " appendStringTwo:numberString];
    
    //Call Compare Function
    intergerOne = 50;
    intergerTwo = 50;
    numberOne = [[NSNumber alloc] initWithInt:intergerOne];
    numberTwo = [[NSNumber alloc] initWithInt:intergerTwo];
    compareArray = [NSArray arrayWithObjects:numberOne, numberTwo, nil];
    returnedAnswer =[self compareFirst:50 compareSecond:50];
    compareStringOne =[[NSString alloc] initWithFormat:@"%@ = %@",[compareArray objectAtIndex:0],[compareArray objectAtIndex:1]];
    if (returnedAnswer == 1)
    {
        comparedAnswer =@" is TRUE.";
    }
    else
    {
        comparedAnswer =@" is FALSE.";
    }
    compareStringTwo = [[NSString alloc] initWithFormat:@" %@", comparedAnswer];
    [self appendStringOne:compareStringOne appendStringTwo:compareStringTwo];
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
    
    addAnswer = numOne + numTwo;
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
-(void)appendStringOne:(NSString*)stringOne appendStringTwo:(NSString*)stringTwo
{
    appendedString = [[NSMutableString alloc] initWithString: stringOne];
    [appendedString appendString: stringTwo];
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
