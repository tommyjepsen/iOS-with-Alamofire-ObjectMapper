//
//  API.swift
//  start
//
//  Created by Tommy Jepsen on 05/07/2018.
//  Copyright © 2018 nordie. All rights reserved.
//

import Foundation
import Alamofire

class APIService {

    static let CONSTANT_API_URL = "http://localhost:3000";
    
    static let CONSTANT_API_USER_LOGIN_EMAILPW      = "\(CONSTANT_API_URL)/users/login";
    static let CONSTANT_API_NOTE_SINGLE             = "\(CONSTANT_API_URL)/notes/note";
    static let CONSTANT_API_NOTE_CREATE             = "\(CONSTANT_API_URL)/notes/note";
    static let CONSTANT_API_NOTE_LIST               = "\(CONSTANT_API_URL)/notes/notes/0";

    static var HEADERS: HTTPHeaders = [
        "Authorization": "",
        "Accept": "application/json"
    ]

    static func getNoteList(onSuccess: @escaping (List)->(), onError: @escaping (String)->())  {
        Alamofire.request(self.CONSTANT_API_NOTE_LIST, headers: self.HEADERS).responseObject { (response: DataResponse<List>) in
            switch response.result {
                case .success(let value):
                    print(value)
                    onSuccess(value)
                    break
                case .failure( _):
                    onError("error")
                    break;
            }
        }
    }
    
    static func getNoteSingle(id:Int, onSuccess: @escaping (Note)->(), onError: @escaping (String)->())  {
        let url = self.CONSTANT_API_NOTE_SINGLE + "/" + String(id);
        Alamofire.request(url, headers: self.HEADERS).responseObject { (response: DataResponse<Note>) in
            switch response.result {
                case .success(let value):
                    print(value)
                    onSuccess(value)
                    break
            case .failure( _):
                    onError("error")
                    break;
            }
        }
    }
    
    static func postNote(postParams:Parameters, onSuccess: @escaping (Note)->(), onError: @escaping (String)->())  {
        let url = self.CONSTANT_API_NOTE_CREATE;
        Alamofire.request(url, method: .post, parameters: postParams, headers: self.HEADERS).responseObject { (response: DataResponse<Note>) in
            switch response.result {
            case .success(let value):
                print(value)
                onSuccess(value)
                break
            case .failure( _):
                onError("error")
                break;
            }
        }
    }
}
