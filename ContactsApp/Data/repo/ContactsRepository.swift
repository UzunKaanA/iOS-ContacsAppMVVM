//
//  ContactsRepository.swift
//  ContactsApp
//
//  Created by Kaan Uzun on 14.05.2024.
//

import Foundation
import RxSwift

class ContactsRepository {
    
    var contactsList = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    func contactSave(contact_name:String, contact_number:String) {
        print(("Contact Register: \(contact_name) + \(contact_number)"))
    }
    
    func update(contact_id:Int, contact_name:String, contact_number:String){
      print(("Contact Updated: \(contact_id) + \(contact_name) + \(contact_number)"))
    }

    
    func search(searchKey:String){
        print("Search Contact : \(searchKey)")
    }
    
    func delete(contact_id:Int){
        print("Delete Contact: \(contact_id)")
    }
    
    func contactsUp(){
        var list = [Kisiler]()
        let c1 = Kisiler(kisi_id: 1, kisi_ad: "Zeynep", kisi_tel: "1111")
        let c2 = Kisiler(kisi_id: 2, kisi_ad: "Kaan", kisi_tel: "2222")
        let c3 = Kisiler(kisi_id: 3, kisi_ad: "Yigit", kisi_tel: "3333")
        list.append(c1)
        list.append(c2)
        list.append(c3)
        
        contactsList.onNext(list)//Triggering
    }
    
}
