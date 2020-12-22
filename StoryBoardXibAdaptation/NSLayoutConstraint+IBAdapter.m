//
//  NSLayoutConstraint+IBAdapter.m
//  StoryBoardXibAdaptation
//
//  Created by ASSASSIN on 2020/12/18.
//

#import "NSLayoutConstraint+IBAdapter.h"


#define BaseWidth 414

#define AdaptW [[UIScreen mainScreen] bounds].size.width / BaseWidth * 1.00

@implementation NSLayoutConstraint (IBAdapter)

static char *adapterKey = "adapterKey";

  -(void)setAdapterScreen:(BOOL)adapterScreen{
      BOOL flag = adapterScreen;
      objc_setAssociatedObject(self, adapterKey, @(flag), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
      if(adapterScreen){
          self.constant = AdaptW * self.constant;
      }
  }

-(BOOL)adapterScreen{
   BOOL flag = objc_getAssociatedObject(self, adapterKey);
    return flag;
}

@end
