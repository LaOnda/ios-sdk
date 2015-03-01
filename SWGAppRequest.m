#import "NIKDate.h"
#import "SWGAppRequest.h"

@implementation SWGAppRequest

-(id)_id: (NSNumber*) _id
    name: (NSString*) name
    api_name: (NSString*) api_name
    swg_description: (NSString*) swg_description
    is_active: (NSNumber*) is_active
    url: (NSString*) url
    is_url_external: (NSNumber*) is_url_external
    import_url: (NSString*) import_url
    storage_service_id: (NSString*) storage_service_id
    storage_container: (NSString*) storage_container
    requires_fullscreen: (NSNumber*) requires_fullscreen
    allow_fullscreen_toggle: (NSNumber*) allow_fullscreen_toggle
    toggle_location: (NSString*) toggle_location
    requires_plugin: (NSNumber*) requires_plugin
    roles_default_app: (SWGRelatedRoles*) roles_default_app
    users_default_app: (SWGRelatedUsers*) users_default_app
    app_groups: (SWGRelatedAppGroups*) app_groups
    roles: (SWGRelatedRoles*) roles
    services: (SWGRelatedServices*) services
{
  __id = _id;
  _name = name;
  _api_name = api_name;
  _swg_description = swg_description;
  _is_active = is_active;
  _url = url;
  _is_url_external = is_url_external;
  _import_url = import_url;
  _storage_service_id = storage_service_id;
  _storage_container = storage_container;
  _requires_fullscreen = requires_fullscreen;
  _allow_fullscreen_toggle = allow_fullscreen_toggle;
  _toggle_location = toggle_location;
  _requires_plugin = requires_plugin;
  _roles_default_app = roles_default_app;
  _users_default_app = users_default_app;
  _app_groups = app_groups;
  _roles = roles;
  _services = services;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        __id = dict[@"id"]; 
        _name = dict[@"name"]; 
        _api_name = dict[@"api_name"]; 
        _swg_description = dict[@"description"];
        _is_active = dict[@"is_active"]; 
        _url = dict[@"url"]; 
        _is_url_external = dict[@"is_url_external"]; 
        _import_url = dict[@"import_url"]; 
        _storage_service_id = dict[@"storage_service_id"]; 
        _storage_container = dict[@"storage_container"]; 
        _requires_fullscreen = dict[@"requires_fullscreen"]; 
        _allow_fullscreen_toggle = dict[@"allow_fullscreen_toggle"]; 
        _toggle_location = dict[@"toggle_location"]; 
        _requires_plugin = dict[@"requires_plugin"]; 
        id roles_default_app_dict = dict[@"roles_default_app"];
        _roles_default_app = [[SWGRelatedRoles alloc]initWithValues:roles_default_app_dict];
        id users_default_app_dict = dict[@"users_default_app"];
        _users_default_app = [[SWGRelatedUsers alloc]initWithValues:users_default_app_dict];
        id app_groups_dict = dict[@"app_groups"];
        _app_groups = [[SWGRelatedAppGroups alloc]initWithValues:app_groups_dict];
        id roles_dict = dict[@"roles"];
        _roles = [[SWGRelatedRoles alloc]initWithValues:roles_dict];
        id services_dict = dict[@"services"];
        _services = [[SWGRelatedServices alloc]initWithValues:services_dict];
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) dict[@"id"] = __id ;
    if(_name != nil) dict[@"name"] = _name ;
    if(_api_name != nil) dict[@"api_name"] = _api_name ;
    if(_swg_description != nil) dict[@"description"] = _swg_description ;
    if(_is_active != nil) dict[@"is_active"] = _is_active ;
    if(_url != nil) dict[@"url"] = _url ;
    if(_is_url_external != nil) dict[@"is_url_external"] = _is_url_external ;
    if(_import_url != nil) dict[@"import_url"] = _import_url ;
    if(_storage_service_id != nil) dict[@"storage_service_id"] = _storage_service_id ;
    if(_storage_container != nil) dict[@"storage_container"] = _storage_container ;
    if(_requires_fullscreen != nil) dict[@"requires_fullscreen"] = _requires_fullscreen ;
    if(_allow_fullscreen_toggle != nil) dict[@"allow_fullscreen_toggle"] = _allow_fullscreen_toggle ;
    if(_toggle_location != nil) dict[@"toggle_location"] = _toggle_location ;
    if(_requires_plugin != nil) dict[@"requires_plugin"] = _requires_plugin ;
    if(_roles_default_app != nil){
        if([_roles_default_app isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGRelatedRoles *roles_default_app in (NSArray*)_roles_default_app) {
                [array addObject:[(NIKSwaggerObject*)roles_default_app asDictionary]];
            }
            dict[@"roles_default_app"] = array;
        }
        else if(_roles_default_app && [_roles_default_app isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_roles_default_app toString];
            if(dateString){
                dict[@"roles_default_app"] = dateString;
            }
        }
    }
    else {
    if(_roles_default_app != nil) dict[@"roles_default_app"] = [(NIKSwaggerObject*)_roles_default_app asDictionary];
    }
    if(_users_default_app != nil){
        if([_users_default_app isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGRelatedUsers *users_default_app in (NSArray*)_users_default_app) {
                [array addObject:[(NIKSwaggerObject*)users_default_app asDictionary]];
            }
            dict[@"users_default_app"] = array;
        }
        else if(_users_default_app && [_users_default_app isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_users_default_app toString];
            if(dateString){
                dict[@"users_default_app"] = dateString;
            }
        }
    }
    else {
    if(_users_default_app != nil) dict[@"users_default_app"] = [(NIKSwaggerObject*)_users_default_app asDictionary];
    }
    if(_app_groups != nil){
        if([_app_groups isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGRelatedAppGroups *app_groups in (NSArray*)_app_groups) {
                [array addObject:[(NIKSwaggerObject*)app_groups asDictionary]];
            }
            dict[@"app_groups"] = array;
        }
        else if(_app_groups && [_app_groups isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_app_groups toString];
            if(dateString){
                dict[@"app_groups"] = dateString;
            }
        }
    }
    else {
    if(_app_groups != nil) dict[@"app_groups"] = [(NIKSwaggerObject*)_app_groups asDictionary];
    }
    if(_roles != nil){
        if([_roles isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGRelatedRoles *roles in (NSArray*)_roles) {
                [array addObject:[(NIKSwaggerObject*)roles asDictionary]];
            }
            dict[@"roles"] = array;
        }
        else if(_roles && [_roles isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_roles toString];
            if(dateString){
                dict[@"roles"] = dateString;
            }
        }
    }
    else {
    if(_roles != nil) dict[@"roles"] = [(NIKSwaggerObject*)_roles asDictionary];
    }
    if(_services != nil){
        if([_services isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGRelatedServices *services in (NSArray*)_services) {
                [array addObject:[(NIKSwaggerObject*)services asDictionary]];
            }
            dict[@"services"] = array;
        }
        else if(_services && [_services isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_services toString];
            if(dateString){
                dict[@"services"] = dateString;
            }
        }
    }
    else {
    if(_services != nil) dict[@"services"] = [(NIKSwaggerObject*)_services asDictionary];
    }
    NSDictionary* output = [dict copy];
    return output;
}

@end

