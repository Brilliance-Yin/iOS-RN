//
//  RNToReact.m
//  Worker
//
//  Created by Luban on 2021/12/6.
//

#import "RNToReact.h"

@implementation RNToReact

RCT_EXPORT_MODULE();

// RN调用原生方法（带参数写法：rnToReactMessage:(NSString *)message）
RCT_EXPORT_METHOD(rnToReactMessage)
{
  //原生需要执行的代码
}

@end
