//
//  NSObject+MTSwizzle.h
//  StoryBoardXibAdaptation
//
//  Created by ASSASSIN on 2020/12/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (MTSwizzle)

+(BOOL)swizzleClassMethod:(SEL)originalSel with:(SEL)newSel;

+(BOOL)swizzleInstanceMethod:(SEL)originalSel with:(SEL)newSel;

@end

NS_ASSUME_NONNULL_END
