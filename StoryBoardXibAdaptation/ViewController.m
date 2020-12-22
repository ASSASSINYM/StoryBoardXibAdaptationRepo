//
//  ViewController.m
//  StoryBoardXibAdaptation
//
//  Created by ASSASSIN on 2020/12/18.
//

#import "ViewController.h"
#import "MTMobileDevice.h"

@interface ViewController ()

@property(nonatomic,weak)IBOutlet UILabel *notelabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MTMobileDeviceType type = [MTMobileDevice deviceType];
    NSLog(@"type --- %lu",(unsigned long)type);
    
    NSLog(@"%@",self.notelabel.font);
    
//    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.notelabel.frame) + 100, self.view.bounds.size.width, 50)];
//    testLabel.textAlignment = NSTextAlignmentCenter;
//    testLabel.text = @"字体适配";
//    [self.view addSubview:testLabel];
//
//    NSLog(@"test font -- %@",testLabel.font);
    
}


@end
