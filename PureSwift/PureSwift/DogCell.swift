//
//  DogCell.swift
//  PureSwift
//
//  Created by Süleyman Koçak on 18.04.2020.
//  Copyright © 2020 Suleyman Kocak. All rights reserved.
//

import UIKit

class DogCell: UICollectionViewCell {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var dogImage : UIImageView = {
        let iv = UIImageView()
        iv.layer.cornerRadius = 8
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.layer.masksToBounds = true
        return iv
    }()

    func configureUI(){
        addSubview(dogImage)
        dogImage.addConstraintsToFillView(self)
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 5
        self.layer.shadowOpacity = 0.5
    }


}
