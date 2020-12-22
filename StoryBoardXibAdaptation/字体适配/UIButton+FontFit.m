//
//  UIButton+FontFit.m
//  StoryBoardXibAdaptation
//
//  Created by ASSASSIN on 2020/12/22.
//

#import "UIButton+FontFit.h"
#import "NSObject+MTSwizzle.h"

@implementation UIButton (FontFit)

+(void)load
{
    [[self class] swizzleInstanceMethod:@selector(initWithCoder:) with:@selector(MT_InitWithCoder:)];
    
}

-(id)MT_InitWithCoder:(NSCoder*)aDecode{
    
    [self MT_InitWithCoder:aDecode];
    
    CGFloat pt = self.titleLabel.font.pointSize;
    
    self.titleLabel.font = [UIFont systemFontOfSize:pt];//这个方法会进行字体转换
    
    return self;
}

@end
