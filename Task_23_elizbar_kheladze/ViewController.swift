//
//  ViewController.swift
//  Task_23_elizbar_kheladze
//
//  Created by alta on 8/16/22.
//

import UIKit

class ViewController: UIViewController {
    var tvsById =  [TVId]()
    
    var similarTvs =  [TVId]()
    let semaphore = DispatchSemaphore(value: 1)
    let queue = DispatchQueue(label: "queue",qos: .background)
    override func viewDidLoad() {
        super.viewDidLoad()
        let operationqueue = OperationQueue()
        queue.async{
            self.semaphore.wait()
            getTvs { tvList in
                self.tvsById = tvList.results
                self.semaphore.signal()
                
            }
        }
        queue.async{
            self.semaphore.wait()
            getSimilarTv(id: self.tvsById[Int.random(in: 0..<self.tvsById.count)].id) { tvs in
                self.similarTvs = tvs.results
                self.semaphore.signal()
            }
        }
        queue.async{
            self.semaphore.wait()
            getTv(id: self.similarTvs[Int.random(in: 0..<self.tvsById.count)].id) { tv in
                print("name : \(tv.name) ")
                print("numbero of episodes is \(tv.number_of_episodes)")
                self.semaphore.signal()
            }
        }
        


        
        
        // Do any additional setup after loading the view.
    }


}
    

