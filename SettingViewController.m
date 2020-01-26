//
//  SettingViewController.m
//  Background Change UISwitch
//
//  Created by Parti Albert on 2013.04.07..
//  Copyright (c) 2013 Parti Albert. All rights reserved.
//

#import "SettingViewController.h"
#import "ViewController.h"
@interface SettingViewController ()

@end

@implementation SettingViewController
@synthesize oneByButton;
@synthesize twoByButton;
@synthesize threeByButton;
@synthesize mySwitch;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)loadSwitchButtonStates {
    //Load from NSUserDefaults
    oneByEnabled = [[NSUserDefaults standardUserDefaults] boolForKey:@"OneByDefault"];
    twoByEnabled = [[NSUserDefaults standardUserDefaults] boolForKey:@"TwoByDefault"];
    threeByEnabled = [[NSUserDefaults standardUserDefaults] boolForKey:@"ThreeByDefault"];
    
    //Set switch buttons images based on loaded values
    if (oneByEnabled) [oneByButton setImage:[UIImage imageNamed:@"switch-on.png"] forState:UIControlStateNormal];
    else [oneByButton setImage:[UIImage imageNamed:@"switch-off.png"] forState:UIControlStateNormal];
    
    if (twoByEnabled) [twoByButton setImage:[UIImage imageNamed:@"switch-on.png"] forState:UIControlStateNormal];
    else [twoByButton setImage:[UIImage imageNamed:@"switch-off.png"] forState:UIControlStateNormal];
    
    if (threeByEnabled) [threeByButton setImage:[UIImage imageNamed:@"switch-on.png"] forState:UIControlStateNormal];
    else [threeByButton setImage:[UIImage imageNamed:@"switch-off.png"] forState:UIControlStateNormal];
    
   
}
- (void)viewDidLoad
{
    [super viewDidLoad];
     [self loadSwitchButtonStates];
    [self mySwitch];
  
   
    
	// Do any additional setup after loading the view.
}


- (void)viewDidUnload
{
    
    [self setOneByButton:nil];
    [self setTwoByButton:nil];
    [self setThreeByButton:nil];
    [self setMySwitch:nil];
  
   
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (IBAction)switchButtonPressed:(id)sender {
    if (sender == oneByButton) {
        oneByEnabled = !oneByEnabled;
        [[NSUserDefaults standardUserDefaults] setBool:oneByEnabled forKey:@"OneByDefault"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        if (oneByEnabled) {
          
            [oneByButton setImage:[UIImage imageNamed:@"switch-on.png"] forState:UIControlStateNormal];
            
            twoByEnabled = NO;
            [[NSUserDefaults standardUserDefaults] setBool:twoByEnabled forKey:@"TwoByDefault"];
            [twoByButton setImage:[UIImage imageNamed:@"switch-off.png"] forState:UIControlStateNormal];
            
            threeByEnabled= NO;
            [[NSUserDefaults standardUserDefaults] setBool:threeByEnabled forKey:@"ThreeByDefault"];
            [threeByButton setImage:[UIImage imageNamed:@"switch-off.png"] forState:UIControlStateNormal];
        }
        
        
        else [oneByButton setImage:[UIImage imageNamed:@"switch-off.png"] forState:UIControlStateNormal];
       
        
    }
    else if (sender == twoByButton) {
      
        twoByEnabled = !twoByEnabled;
        [[NSUserDefaults standardUserDefaults] setBool:twoByEnabled forKey:@"TwoByDefault"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        if (twoByEnabled) {
            [twoByButton setImage:[UIImage imageNamed:@"switch-on.png"] forState:UIControlStateNormal];
            
            oneByEnabled = NO;
            [[NSUserDefaults standardUserDefaults] setBool:oneByEnabled forKey:@"OneByDefault"];
            [oneByButton setImage:[UIImage imageNamed:@"switch-off.png"] forState:UIControlStateNormal];
            
            threeByEnabled= NO;
            [[NSUserDefaults standardUserDefaults] setBool:threeByEnabled forKey:@"ThreeByDefault"];
            [threeByButton setImage:[UIImage imageNamed:@"switch-off.png"] forState:UIControlStateNormal];
            
            
        }
        else [twoByButton setImage:[UIImage imageNamed:@"switch-off.png"] forState:UIControlStateNormal];
    }
    else if (sender == threeByButton) {
        
        threeByEnabled = !threeByEnabled;
        [[NSUserDefaults standardUserDefaults] setBool:threeByEnabled forKey:@"ThreeByDefault"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        if (threeByEnabled) {
            [threeByButton setImage:[UIImage imageNamed:@"switch-on.png"] forState:UIControlStateNormal];
            
            oneByEnabled = NO;
            [[NSUserDefaults standardUserDefaults] setBool:oneByEnabled forKey:@"OneByDefault"];
            [oneByButton setImage:[UIImage imageNamed:@"switch-off.png"] forState:UIControlStateNormal];
            
            twoByEnabled= NO;
            [[NSUserDefaults standardUserDefaults] setBool:twoByEnabled forKey:@"TwoByDefault"];
            [twoByButton setImage:[UIImage imageNamed:@"switch-off.png"] forState:UIControlStateNormal];
            
            
        }
        else [threeByButton setImage:[UIImage imageNamed:@"switch-off.png"] forState:UIControlStateNormal];
}}
    




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)segToggle:(id)sender {
    if ( mySwitch.on) {
      
        label.text = @"on label";
    }else{
        label.text = @"off label";
       
    }
    
    
}
@end
