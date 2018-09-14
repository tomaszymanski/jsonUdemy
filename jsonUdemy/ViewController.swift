//
//  ViewController.swift
//  jsonUdemy
//
//  Created by Tomasz Szymanski on 31.08.2018.
//  Copyright © 2018 Tomasz Szymanski. All rights reserved.
//

import UIKit
import SwiftyJSON



class ViewController: UIViewController {
    //var materials : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
      // let asset = Bundle.main.path(forResource: "tabela", ofType: "JSON")
        //let asset = NSDataAsset(name: "tabela")
       // let json = try? JSONSerialization.jsonObject(with: asset!.data, options: JSONSerialization.ReadingOptions.allowFragments)
       // let jason:JSON = JSON(NSDataAsset(name: "tabela.json") as Any)
        if let bun = Bundle.main.path(forResource: "tabela", ofType: "json"){
            do{
                let data = try Data(contentsOf: URL(fileURLWithPath: bun))
                let jas = try JSON(data: data)
            let r30 = jas["material"]["CUNI"]["KOLANO"]["R"]["R30"].array!
            print(r30[1])
            print(jas["material"]["CUNI"]["KOLANO"]["R"]["R30"][0].int!)
            }catch{
                print("bla bla")
            }
        }
        
        //print(jason["material"])
//        if let material = JSON(["material"]["CUNI"]["KOLANO"]["R"]["R15"].array)
//        {
//            for x in material{
//            print(x)
//            }
//        }else{
//            print("mie!!")
//        }
            /*
        if let json = try? JSONSerialization.jsonObject(with: asset!.data, options: JSONSerialization.ReadingOptions.allowFragments) as! [String : Any]  {     // let t = json.
      
            
                
                let material = json["material"] as! [String : Any]
          
                let CUNI = material["CUNI"] as! [String : Any]
          
                let KOLANO = CUNI["KOLANO"] as! [String : Any]
          
                let R = KOLANO["R"] as! [String : Any]
          
                let R15 = R["R15"] as! [Int]
            
                let R90 = R["R90"] as! [Int]
            
                print(R90[2])
                print(R15[6])
           */
            
            
            
            
//            for x in R15{
//                print ("R15 - \(x)")
//            }
//            print("\n")
//            for x in R90{
//                print ("R90 - \(x)")
//            }
            
            
            
            
           // materials.append(item["R"] as! String)
       // for x in item2 {
        //    print(x)
      // }
        //}
//        for field in json?["Language"]??["Field"] as? [AnyObject] ?? [] {
//            if let number = field["Number"] as? String {
//                print(number)
//            }
//        }
       //print(json!)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

