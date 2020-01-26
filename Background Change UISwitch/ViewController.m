//
//  ViewController.m
//  Background Change UISwitch
//
//  Created by Parti Albert on 2013.04.06..
//  Copyright (c) 2013 Parti Albert. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "SettingViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self performSelector:@selector(kepvalto1) withObject:nil];
    [self performSelector:@selector(kepvalto2) withObject:nil];
    [self performSelector:@selector(kepvalto3) withObject:nil];

    
    
    

}
-(void)kepvalto3{
    NSUserDefaults *k3defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *kepvalto3 = [NSDictionary dictionaryWithObject:@"YES" forKey:@"ThreeByDefault"];
    
    [k3defaults registerDefaults:kepvalto3];
    
    [k3defaults synchronize];
    
      BOOL enabled = [k3defaults boolForKey:@"ThreeByDefault"];
    
    
    if (enabled) {
        self.imageView.image = [UIImage imageNamed:@"IMG_0149.PNG"];
        
        
    }else{
        
        
    }
    
}
-(void)kepvalto2{
    NSUserDefaults *k2defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *kepvalto2 = [NSDictionary dictionaryWithObject:@"NO" forKey:@"OneByDefault"];
    
    [k2defaults registerDefaults:kepvalto2];
    
    [k2defaults synchronize];
    
     BOOL enabled = [k2defaults boolForKey:@"OneByDefault"];
    
    
    if (enabled) {
        self.imageView.image = [UIImage imageNamed:@"IMG_0005.PNG"];
        
        
    }else{
        
        
    }
    
}
-(void)kepvalto1{
    NSUserDefaults *k1defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *kepvalto1 = [NSDictionary dictionaryWithObject:@"NO" forKey:@"TwoByDefault"];
    
   
    
    [k1defaults registerDefaults:kepvalto1];
    
    [k1defaults synchronize];
    
    BOOL enabled = [k1defaults boolForKey:@"TwoByDefault"];
    
    
    if (enabled) {
        self.imageView.image = [UIImage imageNamed:@"IMG_0004.PNG"];
        
        
    }else{
        
       
        
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
