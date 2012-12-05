//
//  ViewController.m
//  CSVParser
//
//  Created by Suraj Mirajkar on 05/12/12.
//  Copyright (c) 2012 Suraj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSString *strPath = [[NSBundle mainBundle] pathForResource:@"full-country-list" ofType:@"csv"];
    NSString *strFile = [NSString stringWithContentsOfFile:strPath encoding:NSUTF8StringEncoding error:nil];
    if (!strFile) {
        NSLog(@"Error reading file.");
    }
    NSArray *arrayCountry = [[NSArray alloc] init];
    arrayCountry = [strFile componentsSeparatedByString:@"\n"];
    // this .csv file is seperated with new line character
    // if .csv is seperated by comma use "," instesd of "\n"
    
    for(NSString *countryname in arrayCountry) {
        NSLog(@"%@", countryname);
        
    }
    NSLog(@"Countries Count: %i", [arrayCountry count]);
    
    UIAlertView *alrt = [[UIAlertView alloc] initWithTitle:@"Total Countries" message:[NSString stringWithFormat:@"%d",[arrayCountry count]] delegate:Nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alrt show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
