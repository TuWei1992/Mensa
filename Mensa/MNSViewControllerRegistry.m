//
//  MNSViewControllerRegistry.m
//  Mensa
//
//  Created by Jordan Kay on 12/6/13.
//  Copyright (c) 2013 Jordan Kay. All rights reserved.
//

#import "MNSViewControllerRegistry.h"

static NSMutableDictionary *registeredViewControllerClasses;

@implementation MNSViewControllerRegistry

+ (void)registerViewControllerClass:(Class)viewControllerClass forModelClass:(Class)modelClass
{
    registeredViewControllerClasses[NSStringFromClass(modelClass)] = viewControllerClass;
}

+ (Class)viewControllerClassForModelClass:(Class)modelClass
{
    return registeredViewControllerClasses[NSStringFromClass(modelClass)];
}

#pragma mark - NSObject

+ (void)initialize
{
    if (self == [MNSViewControllerRegistry class]) {
        registeredViewControllerClasses = [NSMutableDictionary dictionary];
    }
}

@end
