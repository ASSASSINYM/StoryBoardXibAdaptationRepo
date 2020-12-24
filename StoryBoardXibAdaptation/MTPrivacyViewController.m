//
//  MTPrivacyViewController.m
//  MobileCenter
//
//  Created by ASSASSIN on 2020/12/9.
//  Copyright © 2020 CSII-CD. All rights reserved.
//

#import "MTPrivacyViewController.h"
#import "UIView+AdaptScreen.h"

@interface MTPrivacyViewController ()

@property(nonatomic,weak)IBOutlet UILabel *introLabel;
@property(nonatomic,weak)IBOutlet UILabel *authorization1Label;
@property(nonatomic,weak)IBOutlet UILabel *authorization2Label;
//@property(nonatomic,weak)IBOutlet MTAttributeTapLabel *bottomProtocolLabel;

@property(nonatomic,weak)IBOutlet UIButton *iKnowBtn;
//@property(nonatomic,weak)IBOutlet MTCheckBoxBtn *checkBox;

@end

@implementation MTPrivacyViewController

-(void)awakeFromNib {
    [super awakeFromNib];
    
    [self.view adaptScreenWidthWithType:AdaptScreenWidthTypeConstraint exceptViews:@[]];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.view adaptScreenWidthWithType:AdaptScreenWidthTypeConstraint exceptViews:@[]];



    
}

#pragma mark - Action

-(IBAction)iKnowA:(id)sender {
    
 
}

//跳转首页
-(void)mt_gotoHomePage {
 
}



@end
