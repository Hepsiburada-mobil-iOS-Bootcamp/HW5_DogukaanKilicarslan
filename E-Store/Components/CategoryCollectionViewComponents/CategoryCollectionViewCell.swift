//
//  CategoryCollectionViewCell.swift
//  E-Store
//
//  Created by DarkBringer on 20.10.2021.
//

import UIKit
import BaseComponents

class CategoryCollectionViewCell: GenericBaseView<GenericDataProtocol> {
    
    //MARK: - Properties
    
    private lazy var imageView: UIImageView = {
        let temp = UIImageView()
        temp.backgroundColor = .lightGray
        temp.contentMode = .scaleAspectFit
        return temp
    }()
    
    private lazy var nameContainerView: UIView = {
        let temp = UIView()
        temp.backgroundColor = .purple
        temp.addSubview(nameLabel)
        nameLabel.center(inView: temp)
        return temp
    }()
    
    private lazy var nameLabel: UILabel = {
        let temp = UILabel()
        temp.textColor = .white
        temp.font = UIFont.systemFont(ofSize: 16)
        temp.text = "Category"
        return temp
    }()
    //MARK: - init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViewComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureViewComponents() {
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
        addSubview(imageView)
        imageView.anchor(top: topAnchor,
                         left: leftAnchor,
                         bottom: nil,
                         right: rightAnchor,
                         paddingTop: 0,
                         paddingLeft: 0,
                         paddingBottom: 0,
                         paddingRight: 0,
                         width: 0,
                         height: self.frame.height - 32)
        
        addSubview(nameContainerView)
        nameContainerView.anchor(top: nil,
                                 left: leftAnchor,
                                 bottom: bottomAnchor,
                                 right: rightAnchor,
                                 paddingTop: 0,
                                 paddingLeft: 0,
                                 paddingBottom: 0,
                                 paddingRight: 0,
                                 width: 0,
                                 height: 32)
        
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        
    }
}


