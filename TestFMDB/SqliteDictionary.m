//
//  SqliteDictionary.m
//  BayerProtal
//
//  Created by admin on 14-10-13.
//  Copyright (c) 2014年 ___DNEUSER___. All rights reserved.
//

#import "SqliteDictionary.h"

@implementation SqliteDictionary

+(NSDictionary *)getTheKeys:(NSArray *)keyArry AndValues:(NSArray *)valueArray
{
    int m = [keyArry count];
    int n = [valueArray count];
    int i ;
    NSMutableDictionary * dic = [[NSMutableDictionary alloc] init];
    if (m==n) {
        for (i=0;i<=m-1;i++) {
           [dic setValue:[valueArray objectAtIndex:i] forKey:[keyArry objectAtIndex:i]];
        }
    }
    return dic;
}

@end
