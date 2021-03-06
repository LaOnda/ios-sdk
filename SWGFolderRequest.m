#import "NIKDate.h"
#import "SWGFolderRequest.h"

@implementation SWGFolderRequest

-(id)name: (NSString*) name
    path: (NSString*) path
    metadata: (NSArray*) metadata
    folder: (NSArray*) folder
    file: (NSArray*) file
{
  _name = name;
  _path = path;
  _metadata = metadata;
  _folder = folder;
  _file = file;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _name = dict[@"name"]; 
        _path = dict[@"path"]; 
        _metadata = dict[@"metadata"]; 
        id folder_dict = dict[@"folder"];
        if([folder_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)folder_dict count]];

            if([(NSArray*)folder_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)folder_dict) {
                    SWGFolderRequest* d = [[SWGFolderRequest alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _folder = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _folder = [[NSArray alloc] init];
            }
        }
        else {
            _folder = [[NSArray alloc] init];
        }
        id file_dict = dict[@"file"];
        if([file_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)file_dict count]];

            if([(NSArray*)file_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)file_dict) {
                    SWGFileRequest* d = [[SWGFileRequest alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _file = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _file = [[NSArray alloc] init];
            }
        }
        else {
            _file = [[NSArray alloc] init];
        }
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_name != nil) dict[@"name"] = _name ;
    if(_path != nil) dict[@"path"] = _path ;
    if(_metadata != nil) dict[@"metadata"] = _metadata ;
    if(_folder != nil){
        if([_folder isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGFolderRequest *folder in (NSArray*)_folder) {
                [array addObject:[(NIKSwaggerObject*)folder asDictionary]];
            }
            dict[@"folder"] = array;
        }
        else if(_folder && [_folder isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_folder toString];
            if(dateString){
                dict[@"folder"] = dateString;
            }
        }
    }
    else {
    if(_folder != nil) dict[@"folder"] = [(NIKSwaggerObject*)_folder asDictionary];
    }
    if(_file != nil){
        if([_file isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGFileRequest *file in (NSArray*)_file) {
                [array addObject:[(NIKSwaggerObject*)file asDictionary]];
            }
            dict[@"file"] = array;
        }
        else if(_file && [_file isKindOfClass:[NIKDate class]]) {
            NSString * dateString = [(NIKDate*)_file toString];
            if(dateString){
                dict[@"file"] = dateString;
            }
        }
    }
    else {
    if(_file != nil) dict[@"file"] = [(NIKSwaggerObject*)_file asDictionary];
    }
    NSDictionary* output = [dict copy];
    return output;
}

@end

