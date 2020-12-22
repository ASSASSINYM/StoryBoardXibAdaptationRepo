//
//  UIFont+Font.m
//  StoryBoardXibAdaptation
//
//  Created by ASSASSIN on 2020/12/22.
//

#import "UIFont+Font.h"
#import "NSObject+MTSwizzle.h"

@implementation UIFont (Font)

+(void)load
{
    [self swizzleClassMethod:@selector(systemFontOfSize:) with:@selector(MT_systemFontOfSize:)];
    
    [self swizzleClassMethod:@selector(boldSystemFontOfSize:) with:@selector(MT_boldSystemFontOfSize:)];
    
}

+ (UIFont *)MT_systemFontOfSize:(CGFloat)pxSize{
    
    /*
     ps和pt转换
     
     px:相对长度单位。像素（Pixel）。（PS字体）
     pt:绝对长度单位。点（Point）。（iOS字体）
     UI标记图上给我们字体的大小一般都是像素点，如图
     
     */
    UIFont *font = [UIFont MT_systemFontOfSize:pxSize*[UIScreen mainScreen].bounds.size.width/MT_UIScreen];

    return font;
}


+(UIFont*)MT_boldSystemFontOfSize:(CGFloat)pxSize
{
    UIFont *font = [UIFont MT_boldSystemFontOfSize:pxSize*[UIScreen mainScreen].bounds.size.width/MT_UIScreen];
    
    return font;
}


@end
