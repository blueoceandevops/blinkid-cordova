//
//  MBSerializationUtils.m
//  BlinkIdDevDemo
//
//  Created by DoDo on 01/06/2018.
//

#import "MBSerializationUtils.h"

@implementation MBSerializationUtils

+(NSDictionary *) serializeDay:(NSInteger)day month:(NSInteger)month year:(NSInteger)year {
    return @{
      @"day" : [NSNumber numberWithInteger:day],
      @"month" : [NSNumber numberWithInteger:month],
      @"year" : [NSNumber numberWithInteger:year]
    };
}

+(NSDictionary *) serializeNSDate:(NSDate*) value {
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:value];
    return [MBSerializationUtils serializeDay:components.day month:components.month year:components.year];
}

+(NSDictionary *) serializeMBDateResult:(MBDateResult *) value {
    return [MBSerializationUtils serializeDay:value.day month:value.month year:value.year];
}

@end
