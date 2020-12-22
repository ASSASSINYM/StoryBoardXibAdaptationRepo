//
//  ScreenViewController.m
//  StoryBoardXibAdaptation
//
//  Created by ASSASSIN on 2020/12/22.
//

#import "ScreenViewController.h"
#import "UIView+AdaptScreen.h"

#define MTRealValue(value) ((value)/414.0f*[UIScreen mainScreen].bounds.size.width)


@interface ScreenViewController ()

@property(nonatomic,weak)IBOutlet UILabel *testLabel;

@end

@implementation ScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view adaptScreenWidthWithType:AdaptScreenWidthTypeConstraint exceptViews:@[]];
    
//    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, MTRealValue(200), MTRealValue(300), MTRealValue(50))];
//    testLabel.backgroundColor = [UIColor redColor];
//    testLabel.text = @"屏幕适配屏幕适配屏幕适配";
//    [self.view addSubview:testLabel];
    
    NSLog(@"%@",[NSValue valueWithCGRect:self.testLabel.frame]);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
