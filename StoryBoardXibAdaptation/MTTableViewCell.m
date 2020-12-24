//
//  MTTableViewCell.m
//  StoryBoardXibAdaptation
//
//  Created by ASSASSIN on 2020/12/24.
//

#import "MTTableViewCell.h"
#import "UIView+AdaptScreen.h"

@implementation MTTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    [self adaptScreenWidthWithType:AdaptScreenWidthTypeConstraint exceptViews:@[]];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
