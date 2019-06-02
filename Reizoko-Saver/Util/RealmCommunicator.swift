//
//  File.swift
//  Reizoko-Saver
//
//  Created by 岡田聡 on 2019/05/27.
//  Copyright © 2019 SatoshiOkada. All rights reserved.
//

import Foundation
import RealmSwift

class RealmCommunicator {
    func objects<T: Object>(_ type: T.Type, predicate: NSPredicate? = nil) -> Results<T>? {
        if !isRealmAccessible() { return nil }
        
        let realm = try! Realm()
        realm.refresh()
        
        return predicate == nil ? realm.objects(type) : realm.objects(type).filter(predicate!)
    }
    
    func object<T: Object>(_ type: T.Type, key: String) -> T? {
        if !isRealmAccessible() { return nil }
        
        let realm = try! Realm()
        realm.refresh()
        
        return realm.object(ofType: type, forPrimaryKey: key)
    }
    
    func add<T: Object>(_ data: [T], update: Bool = true) {
        if !isRealmAccessible() { return }
        
        let realm = try! Realm()
        realm.refresh()
        
        if realm.isInWriteTransaction {
            realm.add(data, update: update)
        } else {
            try? realm.write {
                realm.add(data, update: update)
            }
        }
    }
    
    func add<T: Object>(_ data: T, update: Bool = true) {
        add([data], update: update)
    }
    
    func runTransaction(action: () -> Void) {
        if !isRealmAccessible() { return }
        
        let realm = try! Realm()
        realm.refresh()
        
        try? realm.write {
            action()
        }
    }
    
    func delete<T: Object>(_ data: [T]) {
        let realm = try! Realm()
        realm.refresh()
        try? realm.write { realm.delete(data) }
    }
    
    func delete<T: Object>(_ data: T) {
        delete([data])
    }
    
    func clearAllData() {
        if !isRealmAccessible() { return }
        
        let realm = try! Realm()
        realm.refresh()
        try? realm.write { realm.deleteAll() }
    }
}

extension RealmCommunicator {
    func isRealmAccessible() -> Bool {
        do { _ = try Realm() } catch {
            print("Realm is not accessible")
            return false
        }
        return true
    }
    
    func configureRealm() {
        Realm.Configuration.defaultConfiguration.deleteRealmIfMigrationNeeded = true
    }
}
