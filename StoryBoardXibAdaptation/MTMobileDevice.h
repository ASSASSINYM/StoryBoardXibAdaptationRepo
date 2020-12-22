//
//  MTMobileDevice.h
//  StoryBoardXibAdaptation
//
//  Created by ASSASSIN on 2020/12/22.
//

#import <Foundation/Foundation.h>

#define MT_device_in(...) [MTMobileDevice isOneOfThem: __VA_ARGS__, nil]
#define MT_device_is(is) [MTMobileDevice isOneOfThem:is,nil]
// device type
#define MT_is_iPhone MT_device_is(iPhone)
#define MT_is_iPad MT_device_is(iPad)
#define MT_is_iPod MT_device_is(iPod)
// serial
#define MT_is_iPhone5_serial MT_device_in(iPhone5,iPhone5c,iPhone5s)
#define MT_is_iPhone6_serial MT_device_in(iPhone6,iPhone6s,iPhone6p,iPhone6sp)
#define MT_is_iPhone7_serial MT_device_in(iPhone7,iPhone7p)
#define MT_is_iPhone8_serial MT_device_in(iPhone8,iPhone8p)
#define MT_is_iPhoneX_serial MT_device_in(iPhoneX,iPhoneXR,iPhoneXS,iPhoneXSMax)
#define MT_is_iPhone11_serial MT_device_in(iPhone11,iPhone11Pro,iPhone11ProMax)
#define MT_is_iPhoneWithHair_serial (MT_is_iPhoneX_serial || MT_is_iPhone11_serial)
#define MT_is_iPad1_serial MT_device_in(iPad1,iPad1_3G)
#define MT_is_iPad2_serial MT_device_in(iPad2WiFi,iPad2,iPad2CDMA)
#define MT_is_iPad3_serial MT_device_in(iPad3,ipad3WiFi,ipad3GSM_CDMA)
#define MT_is_iPad4_serial MT_device_in(iPad4,ipad4WiFi,iPad4GSM_CDMA)
#define MT_is_iPad5_serial MT_device_in(iPad5WiFi,iPad5Cellular)
#define MT_is_iPad6_serial MT_device_in(iPad6WiFi,iPad6Cellular)
#define MT_is_iPadMini_serial MT_device_in(iPadMiniWiFi,iPadMini,iPadMiniGSM_CDMA)
#define MT_is_iPadMini2_serial MT_device_in(iPadMini2WiFi,iPadMini2Cellular,iPadMini2)
#define MT_is_iPadMini4_serial MT_device_in(iPadMini4WiFi,iPadMini4LTE)
#define MT_is_iPadAir_serial MT_device_in(iPadAirWiFi,iPadAirCellular)
#define MT_is_iPadPro_serial MT_device_in(iPadPro9_7,iPadPro12_9,iPadPro10_5,iPadPro11)
// size
#define MT_screen_320x568 MT_device_in(iPhone5,iPhone5c,iPhone5s,iPhoneSE)
#define MT_screen_375x667 MT_device_in(iPhone6,iPhone6s,iPhone7,iPhone8)
#define MT_screen_414x736 MT_device_in(iPhone6p,iPhone6sp,iPhone7p,iPhone8p)
#define MT_screen_375x812 MT_device_in(iPhoneX,iPhoneXS)
#define MT_screen_414x896 MT_device_in(iPhoneXSMax,iPhoneXR)

// 为了方便使用，将不为枚举添加前缀，请使用前注意没有冲突问题
typedef NS_ENUM(NSUInteger, MTMobileDeviceType) {
    mobileDeviceUnkown = 0,
    
    //==>iPhone
    iPhone,// 1
    iPhone4,iPhone4s,
    iPhone5,iPhone5c,iPhone5s,
    iPhone6,iPhone6s,
    iPhone6p,iPhone6sp,
    iPhoneSE,
    iPhone7,iPhone7p,
    iPhone8,iPhone8p,
    iPhoneX,
    iPhoneXR,iPhoneXS,iPhoneXSMax,
    iPhone11,iPhone11Pro,iPhone11ProMax,
    //==>iPod
    iPod,//23
    iPod1G,iPod2G,iPod3G,iPod4G,iPod5Gen,iPod6Gen,
    //==>ipad
    iPad,//30
    iPad1,iPad1_3G,
    iPad2WiFi,iPad2,iPad2CDMA,
    iPadMiniWiFi,iPadMini,iPadMiniGSM_CDMA,
    iPad3,ipad3WiFi,ipad3GSM_CDMA,
    iPad4,ipad4WiFi,iPad4GSM_CDMA,
    iPadAirWiFi,iPadAirCellular,
    iPadMini2WiFi,iPadMini2Cellular,iPadMini2,
    iPadMini3,
    iPadMini4WiFi,iPadMini4LTE,
    iPadAir2,
    iPadPro9_7,iPadPro12_9,iPadPro10_5,
    iPad5WiFi,iPad5Cellular,
    iPad6WiFi,iPad6Cellular,
    iPadPro11,
    iPadAir3,
    iPadMini5,
    //==>simulator
    simulator,//64
    simulatori386,simulatorx86_64,
    
    mobileDeviceTypeEnd//哨兵
};

typedef NS_ENUM(NSInteger,MTMobileDeviceNetworkType){
    none,
    _2G,_3G,_4G,
    LTE,WiFi
};


NS_ASSUME_NONNULL_BEGIN

@interface MTMobileDevice : NSObject

/*
 *  因为模拟器运行所识别的型号为模拟器，可设置模拟器代替型号，以方便模拟器调试。
 *  设置为 simulator 则不做任何代替
 *  不要赋值为 iPhone等通用类型、mobileDeviceUnkown、mobileDeviceTypeEnd
 */
+ (void)simulatorType:(MTMobileDeviceType)type;
/*
 *  获取和判断移动设备的型号
 */
+ (MTMobileDeviceType)deviceType;
+ (BOOL)isOneOfThem:(MTMobileDeviceType)firstType,...NS_REQUIRES_NIL_TERMINATION;
+ (NSString *)platform;// 获取当前移动设备型号的字符串
/*
 * 获取和判断当前移动设备的网络类型
 */
+ (BOOL)isUsing:(MTMobileDeviceNetworkType)networkType;
+ (MTMobileDeviceNetworkType)networkType;


+ (BOOL)isJailBroken;// 判断设备是否越狱
+ (NSString *)WiFiSSID;//获取当前使用的 WIFI 的名称

@end

NS_ASSUME_NONNULL_END
