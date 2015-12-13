//
//  XMFindAppCommentModel.swift
//  BeautifulApp
//
//  Created by 梁亦明 on 15/11/25.
//  Copyright © 2015年 xiaoming. All rights reserved.
//

import UIKit

class XMFindAppCommentModel: NSObject {
    // 评论数 int
    var count : String?
    // 背景色
    var author_bgcolor : String?
    // 创建时间
    var created_at : String?
    // 描述
    var author_career : String?
    // 性别
    var author_gender : String?
    // 更新时间
    var updated_at : String?
    // 内容
    var content : String?
    var isoncover : Bool?
    // appTitle
    var app_title : String?
    // appid
    var app_id : String?
    // 作者id
    var author_id : String?
    // 作者图片
    var author_avatar_url : String?
    // 评论id
    var id : String?
    // 作者名字
    var author_name : String?
    
    convenience init(dict : NSDictionary) {
        self.init()
        let count = dict["count"]
        self.count = "\(count)"
        self.author_bgcolor = dict["author_bgcolor"] as? String
        self.created_at = dict["created_at"] as? String
        self.updated_at = dict["updated_at"] as? String
        self.author_gender = dict["author_gender"] as? String
        self.content = dict["content"] as? String
        self.author_career = dict["author_career"] as? String
        let anthorid = dict["author_id"]
        self.author_id = "\(anthorid)"
        self.author_avatar_url = dict["author_avatar_url"] as? String
         id = dict["id"]! as? String
        self.id = "\(id)"
        self.isoncover = dict["isoncover"] as? Bool
        self.app_title = dict["app_title"] as? String
        app_id = dict["app_id"]!as?String
        self.app_id = "\(app_id)"
        self.author_name = dict["author_name"] as? String
    }
}
