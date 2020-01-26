//
//  SettingViewController.h
//  Background Change UISwitch
//
//  Created by Parti Albert on 2013.04.07..
//  Copyright (c) 2013 Parti Albert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingViewController : UIViewController{
    BOOL oneByEnabled;
    BOOL twoByEnabled;
    BOOL threeByEnabled;
    
    IBOutlet UILabel *label;

    
}

- (IBAction)switchButtonPressed:(id)sender;

@property (retain, nonatomic) IBOutlet UIButton *oneByButton;
@property (retain, nonatomic) IBOutlet UIButton *twoByButton;
@property (retain, nonatomic) IBOutlet UIButton *threeByButton;
@property (strong, nonatomic) IBOutlet UISwitch *mySwitch;


- (IBAction)segToggle:(id)sender;


@end
