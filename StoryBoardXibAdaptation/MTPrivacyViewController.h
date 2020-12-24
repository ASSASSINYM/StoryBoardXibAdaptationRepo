//
//  MTPrivacyViewController.h
//  MobileCenter
//
//  Created by ASSASSIN on 2020/12/9.
//  Copyright © 2020 CSII-CD. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,MTPrivacyEntranceType) {
    PrivacyEntranceAppFirstInstalledType,//第一次安装
    PrivacyEntranceProtocolRevokedType//撤销协议
};

@interface MTPrivacyViewController : UIViewController

@property(nonatomic,assign)MTPrivacyEntranceType entranceType;

@end

NS_ASSUME_NONNULL_END
