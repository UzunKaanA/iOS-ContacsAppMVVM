//
//  HomepageViewModel.swift
//  ContactsApp
//
//  Created by Kaan Uzun on 14.05.2024.
//

import Foundation
import RxSwift

class HomepageViewModel {
    var hrepo = ContactsRepository()
    var contactsList = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    init(){
        contactsList = hrepo.contactsList
    }
    
    func search(searchKey:String){
        hrepo.search(searchKey: searchKey)
    }
    
    func delete(kisi_id:Int){
        hrepo.delete(contact_id: kisi_id)
        contactsUp()
    }
    
    func contactsUp(){
        hrepo.contactsUp()
    }
}
