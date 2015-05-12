//
//  IBMakeArrays.m
//  Lesson 8
//
//  Created by Ivan Babich on 04.05.15.
//
//

#import "IBMakeArrays.h"

@implementation IBMakeArrays

+(NSMutableArray *) makeAudi_Method {
   
    NSMutableArray * arrayM = [NSMutableArray new];
    NSString * stringValue = @"A8,A7,A6";
    NSString * stringPrice = @"5000000,4000000,3000000";
    
    NSString * strA6 = @"Audi A6 — семейство автомобилей бизнес-класса, выпускающихся под маркой Audi, внутреннее обозначение — «тип C». Премьера Audi 100 состоялась в 1968 году, с августа 1994 года этот модельный ряд носит название А6.";
    NSString * strA7 = @"Audi A7 Sportback (код кузова — 4G) — пятидверный фастбэк класса Гран Туризмо, выпускаемый AUDI AG, на платформе А6, позиционируется в сегменте ниже Audi A8. Его основные конкуренты — Mercedes-Benz CLS и BMW 6 Gran Coupe. Федеральное автотранспортное ведомство ФРГ позиционирует A7 в верхнем сегменте среднего класса.";
    NSString * strA8 = @"Audi A8 — автомобиль представительского класса, преемник модели Audi V8. Значительная часть его технических компонентов применяется также в модели Volkswagen Phaeton.";
    
    NSArray * arrayValue = [stringValue componentsSeparatedByString:@","];
    NSArray * arrayPrice = [stringPrice componentsSeparatedByString:@","];
    
    for (int i = 0; i < arrayPrice.count; i++) {
        
        NSMutableDictionary * dict = [NSMutableDictionary new];
        [dict setObject:[arrayValue objectAtIndex:i] forKey:@"value"];
        [dict setObject:[arrayPrice objectAtIndex:i] forKey:@"price"];
        
        NSString * values = [arrayValue objectAtIndex:i];
        
        if ([values isEqualToString:@"A8"]) {
            [dict setObject:strA8 forKey:@"discr"];
        }
        else if ([values isEqualToString:@"A7"]) {
            [dict setObject:strA7 forKey:@"discr"];
        }
        else
            [dict setObject:strA6 forKey:@"discr"];
        
        [arrayM addObject:dict];
    }
    return arrayM;
}


+(NSMutableArray *) makeMercedes_Method {
    
    NSMutableArray * arrayM = [NSMutableArray new];
    NSString * stringValue = @"S,CLS,GLA";
    NSString * stringPrice = @"6000000,4500000,1800000";
    
    NSString * strS = @"Mercedes-Benz S-класс — флагманская серия представительских автомобилей немецкой марки Mercedes-Benz. Первые седаны появились в начале 1950-х годов, но официально «Особый класс» (нем. Sonderklasse) появился лишь в 1971 году. Помимо седанов, в состав S-класса также входят купе и кабриолеты. Кроме того, на базе S-класса созданы автомобили Mercedes-Maybach и Mercedes-Maybach Pullman.";
    NSString * strCLS = @"Mercedes-Benz CLS-класс — серия четырёхдверных купе, выпускающихся немецкой маркой Mercedes-Benz с 2004 года.";
    NSString * strGLA = @"Mercedes-Benz X156 — мини-кроссовер, выпускающийся немецкой компанией Mercedes-Benz с декабря 2013 года в Европе. Был представлен на Франкфуртском автосалоне 2013 года.В ноябре 2013 года автомобиль был номинирован на звание «Лучший автомобиль года в мире». С декабря того же года автомобиль продаётся в России по цене от 1 млн 380 тыс рублей.";
    
    NSArray * arrayValue = [stringValue componentsSeparatedByString:@","];
    NSArray * arrayPrice = [stringPrice componentsSeparatedByString:@","];
    
    for (int i = 0; i < arrayPrice.count; i++) {
        
        NSMutableDictionary * dict = [NSMutableDictionary new];
        [dict setObject:[arrayValue objectAtIndex:i] forKey:@"value"];
        [dict setObject:[arrayPrice objectAtIndex:i] forKey:@"price"];
        
        NSString * values = [arrayValue objectAtIndex:i];
        
        if ([values isEqualToString:@"S"]) {
            [dict setObject:strS forKey:@"discr"];
        }
        else if ([values isEqualToString:@"CLS"]) {
            [dict setObject:strCLS forKey:@"discr"];
        }
        else
            [dict setObject:strGLA forKey:@"discr"];
        
        [arrayM addObject:dict];
    }
    return arrayM;
}


@end
