//
//  TV_Call.swift
//  Task_23_elizbar_kheladze
//
//  Created by alta on 8/16/22.
//

import Foundation


    func getTvs(completion: @escaping (TVResponce)-> Void) {
            
            let url = URL(string: "https://api.themoviedb.org/3/tv/top_rated?api_key=69f3298313159cd426f1593b628d72ca")!
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data else { return }
                do {
                    let tvsByID = try JSONDecoder().decode(TVResponce.self, from: data)
                    completion(tvsByID)
                } catch {
                    print(error)
                }
            }.resume()
        }
        

    func getSimilarTv(id: Int,completion: @escaping (TVResponce)-> Void) {
            
            let url = URL(string: "https://api.themoviedb.org/3/tv/\(id)/similar?api_key=69f3298313159cd426f1593b628d72ca")!
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data else { return }
                do {
                    let similarTvs = try JSONDecoder().decode(TVResponce.self, from: data)
                    completion(similarTvs)
                } catch {
                    print(error)
                }
            }.resume()
        }

    func getTv(id: Int,completion: @escaping (TVDetails)-> Void) {
            
            let url = URL(string: "https://api.themoviedb.org/3/tv/\(id)?api_key=69f3298313159cd426f1593b628d72ca")!
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data else { return }
                do {
                    let tv = try JSONDecoder().decode(TVDetails.self, from: data)
                    completion(tv)
                } catch {
                    print(error)
                }
            }.resume()
        }




actor jemali {
    
    func blabla(name: String, ragac: Int){
        1+1
    }
}





