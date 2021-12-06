//
//  ReactToRN.m
//
//  Created by Bri.Yin on 2021/12/6.
//

#import "ReactToRN.h"

@implementation ReactToRN

RCT_EXPORT_MODULE();

// RN调用函数名
- (NSArray<NSString *> *)supportedEvents {
  return @[@"reactName"];
}

// 通知方法
- (void)sendMessageToRN:(NSNotification *)notification {
  dispatch_async(dispatch_get_main_queue(), ^{
    // 重点：——发送事件给RN
    [self sendEventWithName:@"sendMessageToRN" body: notification.userInfo];
  });
}

// RCTEventEmitter父类方法，RN调用=>会自行初始化此类，不需代码new
- (void)startObserving {
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(sendMessageToRN:) name:@"sendMessageToRN" object:nil];
}

- (void)stopObserving {
  [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
