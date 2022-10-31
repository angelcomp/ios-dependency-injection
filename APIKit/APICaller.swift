//
//  APICaller.swift
//  APIKit
//
//  Created by Angelica dos Santos on 31/10/22.
//

import Foundation

public class APICaller {
    public static let shared = APICaller()
    
    private init() {}
    
    public func fetchCoursesNames(completion: @escaping ([String]) -> Void) {
        guard let url = URL(string: "https://iosacademy.io/api/v1/courses/index.php") else {
            return completion([])
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return completion([])
            }
            
            do {
                guard let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.fragmentsAllowed) as? [[String:String]] else {
                    completion([])
                    return
                }
                let names = json.compactMap({ $0["name"] })
                completion(names)
            } catch {
                completion([])
            }
        }
        task.resume()
    }
}
