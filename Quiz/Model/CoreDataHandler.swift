//
//  CoreDataHandler.swift
//  Quiz
//
//  Created by mac on 6/6/18.
//  Copyright © 2018 Devstorm. All rights reserved.
//

import UIKit
import CoreData

class CoreDataHandler: NSObject {
    
    private class func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        return appDelegate.persistentContainer.viewContext
    }
    
    class func saveObject(score: Int, progressBar: Int) -> Bool {
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Score", in: context)
        let manageObject = NSManagedObject(entity: entity!, insertInto: context)
        
        manageObject.setValue(score, forKey: "score")
        manageObject.setValue(progressBar, forKey: "progressBar")
        
        do {
            try context.save()
            return true
        } catch {
            return false
        }
    }
    
    class func fetchObject() -> [Score]? {
        let context = getContext()
        var score: [Score]? = nil
        
        do {
            score = try context.fetch(Score.fetchRequest())
            return score
        } catch {
            return score
        }
    }

}









