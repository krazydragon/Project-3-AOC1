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
    [self addFirst:5 addSecond:5];
    [self compareFirst:5 compareSecond:5];
    [self appendStringOne:@"I'm thinking" appendStringTwo:@" I'm getting the hang of this!!!"];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

//Add Function
-(void)addFirst:(NSInteger)numOne addSecond:(NSInteger)numTwo
{
    
    addAnswer = numOne + numTwo;
    NSLog(@"%d", addAnswer);
}
//Compare Function
-(void)compareFirst:(NSInteger)numOne compareSecond:(NSInteger)numTwo
{
    if (numOne == numTwo)
    {
        compareAnswer = TRUE;
        NSLog(@"They are equal");
    }
    else {
        compareAnswer = FALSE;
        NSLog(@"They are not equal");
    }

}
//Append Function
-(void)appendStringOne:(NSString*)stringOne appendStringTwo:(NSString*)stringTwo
{
    appendedString = [[NSMutableString alloc] initWithString: stringOne];
    [appendedString appendString: stringTwo];
    NSLog(@"%@", appendedString);
    
    
       
}
 
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
