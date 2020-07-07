//
//  DogHeader.swift
//  PureSwift
//
//  Created by Süleyman Koçak on 20.04.2020.
//  Copyright © 2020 Suleyman Kocak. All rights reserved.
//

import UIKit

class DogHeader: UICollectionReusableView{


    let image = UIImageView(image: UIImage(named: "1"))
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemPink
        image.setDimensions(width: 50, height: 50)
        image.layer.cornerRadius = 25
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.borderWidth = 4
        configureUI()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private let topView : UIView = {
        let view = UIView()
        view.backgroundColor = .systemTeal
        return view
    }()

    func configureUI(){
        addSubview(topView)
        addSubview(image)
        topView.anchor(top: topAnchor,left: leftAnchor,right: rightAnchor,height: self.frame.height / 2)
        image.anchor(top: topView.bottomAnchor,left: leftAnchor,paddingTop: -25,paddingLeft: 15)
    }


}


