//
//  ViewController.swift
//  jsonUdemy
//
//  Created by Tomasz Szymanski on 31.08.2018.
//  Copyright © 2018 Tomasz Szymanski. All rights reserved.
//

import UIKit
import SwiftyJSON



class LIstaControler: UITableViewController {
    var materialArray:[JSON] = []
    var materials : JSON = JSON.null
    override func viewDidLoad() {
        super.viewDidLoad()
title="JSON"
        if let bun = Bundle.main.path(forResource: "tabela", ofType: "json"){
            do{
                let data = try Data(contentsOf: URL(fileURLWithPath: bun))
                let jas = try JSON(data: data)
                materials=jas["material"]
            let r30 = jas["material"]["CUNI"]["KOLANO"]["R"]["R30"].array!
//                for (key,subJson):(String, JSON) in jas["material"] {
//                 print(key)
//                    print(jas.type)
//                }
                
                
                materialArray=r30
                print(r30)
            print(jas["material"]["CUNI"]["KOLANO"]["R"]["R30"][0].int!)
            }catch{
                print("bla bla BLA")
            }
        }
        

    }

    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let ile = materials.count
        print(ile)
        return ile
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        let row = indexPath.row
        
        switch self.materials.type{
            case .array:
            cell.textLabel?.text="\(row)"
            cell.detailTextLabel?.text = self.materials.description
            case .dictionary:
                let key:String = Array(self.materials.dictionaryValue.keys)[row]
                let value = self.materials[key]
                cell.textLabel?.text="\(key)"
                cell.detailTextLabel?.text = value.description
            default:
            
                cell.textLabel?.text = ""
                cell.detailTextLabel?.text = self.materials.description
        }
        
        //cell.textLabel?.text = materialArray[indexPath.row].stringValue
        
        return cell
    }
    
    
    
    
    
   


}

