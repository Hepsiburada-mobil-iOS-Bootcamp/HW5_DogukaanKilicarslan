//
//  ViewController.swift
//  E-Store
//
//  Created by DarkBringer on 19.10.2021.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

//    private let database = Database.database().reference()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//                
//        addButton()
//        checkButton()
//    }
//    
//    private func addButton() {
//        
//        let button = UIButton(frame: CGRect(x: 20, y: 200, width: view.frame.size.width - 40 , height: 40))
//        button.setTitle("Add Entry", for: .normal)
//        button.setTitleColor(.white, for: .normal)
//        button.backgroundColor = .link
//        button.addTarget(self, action: #selector(addNewEntry), for: .touchUpInside)
//        view.addSubview(button)
//
//    }
//    
//    private func checkButton() {
//        
//        let button = UIButton(frame: CGRect(x: 20, y: 300, width: view.frame.size.width - 40 , height: 40))
//        button.setTitle("Check Entries", for: .normal)
//        button.setTitleColor(.white, for: .normal)
//        button.backgroundColor = .link
//        button.addTarget(self, action: #selector(checkForChanges), for: .touchUpInside)
//        view.addSubview(button)
//        
//    }
//    
//    @objc private func addNewEntry() {
//        
//        let key = "Key_\(Int.random(in: 0..<11))"
//        print(key)
//        
//        let object: [String: Any] = [
//            "name" : "Doğukaan" as NSObject,
//            "occupation" : "iOS Developer"
//        ]
//        
//        database.child(key).setValue(object)
//    }
//    
//    @objc private func checkForChanges() {
//        database.child("Key").observe(.value) { snapshot in
//            guard let value = snapshot.value else { return }
//            print("value \(value)")
//        }
//
//    }
}

