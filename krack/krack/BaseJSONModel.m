//
//  BaseJSONModel.m
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "BaseJSONModel.h"

@implementation BaseJSONModel

- (id)init {
	self = [super init];
	return self;
}

- (id)initWithDictionary:(NSDictionary *)dict error:(NSError *__autoreleasing *)err {
	return [super initWithDictionary:dict error:err];
}

- (id)initWithString:(NSString *)string error:(JSONModelError *__autoreleasing *)err {
	return [super initWithString:string error:err];
}

- (id)initWithString:(NSString *)string usingEncoding:(NSStringEncoding)encoding error:(JSONModelError *__autoreleasing *)err {
	return  [super initWithString:string usingEncoding:encoding error:err];
}

+ (BOOL)propertyIsOptional:(NSString*)propertyName
{
	return YES;
}

+ (JSONKeyMapper*)keyMapper
{
	return [JSONKeyMapper mapperFromUnderscoreCaseToCamelCase];
}

@end
