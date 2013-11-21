#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "RVBRVBRole*.h"
#import "RVBRole.h"
#import "RVBApp.h"
#import "RVBRVBApp*.h"
#import "Integer.h"

@interface RVBUserRequest : NIKSwaggerObject

@property(nonatomic) NSNumber* _id;
@property(nonatomic) NSString* email;
@property(nonatomic) NSString* password;
@property(nonatomic) NSString* first_name;
@property(nonatomic) NSString* last_name;
@property(nonatomic) NSString* display_name;
@property(nonatomic) NSString* phone;
@property(nonatomic) NSNumber* is_active;
@property(nonatomic) NSNumber* is_sys_admin;
@property(nonatomic) NSString* default_app_id;
@property(nonatomic) NSString* role_id;
@property(nonatomic) RVBApp* default_app;
@property(nonatomic) RVBRole* role;
- (id) _id: (NSNumber*) _id
     email: (NSString*) email
     password: (NSString*) password
     first_name: (NSString*) first_name
     last_name: (NSString*) last_name
     display_name: (NSString*) display_name
     phone: (NSString*) phone
     is_active: (NSNumber*) is_active
     is_sys_admin: (NSNumber*) is_sys_admin
     default_app_id: (NSString*) default_app_id
     role_id: (NSString*) role_id
     default_app: (RVBApp*) default_app
     role: (RVBRole*) role;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end
