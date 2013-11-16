//
//  CCViewController.m
//  View Objects in code
//
//  Created by Dominik Butz on 16/11/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect myLabelRect = CGRectMake(20, 60, 280, 22);
    self.myLabel = [[UILabel alloc] initWithFrame:myLabelRect];
    self.myLabel.backgroundColor = [UIColor grayColor];
    self.myLabel.text = @"Default";
    self.myLabel.textColor = [UIColor blueColor];
    [self.view addSubview:self.myLabel];
    
    CGRect textFieldRect = CGRectMake(20, 110, 280, 30);
    self.myTextField = [[UITextField alloc]initWithFrame:textFieldRect];
    self.myTextField.placeholder= @"Type something";
    self.myTextField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.myTextField];
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(20, 160, 280, 30);
    [myButton setTitle:@"Press me!" forState:UIControlStateNormal];
    [self.view addSubview:myButton];
    
    [myButton addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];
     
     
    
}

-(void)didPressButton:(UIButton*)button {
    
    self.myLabel.text = self.myTextField.text;
    
    [self.myTextField resignFirstResponder];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
