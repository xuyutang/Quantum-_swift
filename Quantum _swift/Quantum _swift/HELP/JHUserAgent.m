//
//  JHUserAgent.m
//  JSAndApp
//
//  Created by Shane on 17/7/28.
//  Copyright © 2017年 Shane. All rights reserved.
//

#import "JHUserAgent.h"
#import "UIDevice+info.h"

@implementation JHUserAgent

+(void)setUserAgentWithToken:(NSString *)token{
    
    NSString *theToken;
    if(token==nil){
        theToken = [NSString stringWithFormat:@"ios=%@;version=%@", [UIDevice currentDevice].machineModelName, [UIDevice currentDevice].systemVersion];
    }
    else{
        theToken = [NSString stringWithFormat:@"ios=%@;version=%@;token=%@", [UIDevice currentDevice].machineModelName, [UIDevice currentDevice].systemVersion,token];
    }

    //NSLog(@"UserAgent:(%@)", theToken);
    
    [[NSUserDefaults standardUserDefaults] registerDefaults:@{@"UserAgent":theToken}];
    [[NSUserDefaults standardUserDefaults] synchronize];
}



@end
