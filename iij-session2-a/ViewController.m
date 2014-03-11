//
//  ViewController.m
//  iij-session2-a
//
//  Created by James Derry on 3/11/14.
//  Copyright (c) 2014 James Derry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray *ourHotels;  // create an instance variable visible to entire class
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self funWithStrings];
    
    [self addHotels];
    
    [self listOurHotelsUsingTitle:@"Favorite Hotels"];
    
    [self addHotelsWithRatings];
    
}

- (void)addHotels
{
    NSArray *hotels = [NSArray arrayWithObjects:@"Aloft", @"The W", @"Hilton", nil];
    
    NSLog(@"The hotel at index 1 in this array is %@", [hotels objectAtIndex:1]);
    
    ourHotels = [NSArray arrayWithArray:hotels];  // the variable hotels is scoped only within this method (only accessible within this methods curly braces.  Let's store the contents of hotels into an instance variable scoped throughout the entire class so other methods can see and change the variable.
}

- (void)listOurHotels
{
    //NSLog(@"%@", hotels); //error, this method cannot 'see' hotels
    NSLog(@"%@", ourHotels);
}

- (void)listOurHotelsUsingTitle:(NSString *)title
{
    NSLog(@"%@: %@", title, ourHotels);
}

- (void)addHotelsUsingObjcLiterals
{
    NSArray *hotels = @[@"Aloft", @"The W", @"Hilton"];
    
    ourHotels = [NSArray arrayWithArray:hotels];
}

- (void)addHotelsWithRatings
{
    NSDictionary *hotels = [NSDictionary dictionaryWithObjectsAndKeys:@"5 star", @"Aloft", @"4 star", @"W", @"5 star", @"Hilton", nil];
    
    NSLog(@"%@", hotels);
}

- (void)addHotelsWithRatingsUsingObjcLiterals
{
    NSDictionary *hotels = @{@"Aloft":@"5 star", @"W":@"4 star", @"Hilton":@"5 star"};
    
    NSLog(@"%@", hotels);
}

- (void)funWithStrings
{
    //NSString examples
    
    NSString *city = @"Irving";
    NSLog(@"I live in the city of %@", city);
    
    NSString *myStory = [NSString stringWithFormat:@"The brown fox lives in %@", city];
    NSLog(@"%@", myStory);
    
    if ([city isEqualToString:@"Irving"]) {
        NSLog(@"The two strings are the same.");
    } else {
        NSLog(@"The two strings are different.");
    }

    //NSMutableString example
    
    NSMutableString *iCanChange = [NSMutableString stringWithString:@"Hello..."];
    
    NSLog(@"%@", [iCanChange stringByAppendingString:@"world!"]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
