//
//  NSLayoutConstraint+IBAdapter.h
//  StoryBoardXibAdaptation
//
//  Created by ASSASSIN on 2020/12/18.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSLayoutConstraint (IBAdapter)

@property (nonatomic, assign) IBInspectable BOOL adapterScreen;

@end

NS_ASSUME_NONNULL_END
