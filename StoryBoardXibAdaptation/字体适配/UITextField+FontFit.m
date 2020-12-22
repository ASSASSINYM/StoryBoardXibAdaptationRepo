//
//  UITextField+FontFit.m
//  StoryBoardXibAdaptation
//
//  Created by ASSASSIN on 2020/12/22.
//

#import "UITextField+FontFit.h"
#import "NSObject+MTSwizzle.h"

@implementation UITextField (FontFit)

+(void)load
{
    [[self class] swizzleInstanceMethod:@selector(initWithCoder:) with:@selector(MT_InitWithCoder:)];
    
}

- (id)MT_InitWithCoder:(NSCoder*)aDecode{
    
    [self MT_InitWithCoder:aDecode];
    
    CGFloat pt = self.font.pointSize;
    
    self.font = [UIFont systemFontOfSize:pt];//这个方法会进行字体转换
    
    return self;
}



@end
