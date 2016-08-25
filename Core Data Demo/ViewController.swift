//
//  ViewController.swift
//  Core Data Demo
//
//  Created by 李宝明 on 16/8/25.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        //let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        
       // newUser.setValue("冉冉", forKey: "username")
        //newUser.setValue("***", forKey: "password")
       // newUser.setValue(1, forKey: "age")
        
        do {
            
           // try  context.save()
            
            print("+++++++++++++++++")
            print("saved")
            print("+++++++++++++++++")
        } catch {
            print("fail to store ")
        }
        
        
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        
        //request.predicate = NSPredicate(format: "username = %@", "然然")
        
        request.returnsObjectsAsFaults = false
        
        do {
            
            let results = try context.fetch(request)
            
            if results.count > 0 {
                for result in results as! [NSManagedObject]{
                    
                    if let username = result.value(forKey: "username") {
                        
                        print(username)
                        
                       //context.delete(result)
                        
                       // do {
                            
                       //     try context.save()
                       // } catch {
                            
                      //  }
                        
                       // result.setValue("然然", forKey: "username")
                        
                       // do {
                        //   try  context.save()
                            
                       // }catch {
                            
                        //}
                        
                    }
                }

                
            }
            
            
        } catch {
            
        }
        
        
        
    }

  

}

