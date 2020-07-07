//
//  horCell.swift
//  PureSwift
//
//  Created by Süleyman Koçak on 20.04.2020.
//  Copyright © 2020 Suleyman Kocak. All rights reserved.
//

import UIKit

class HorCell: UICollectionViewCell {

    lazy var image : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.layer.masksToBounds = true
        iv.layer.cornerRadius = 10
        iv.clipsToBounds = true
        return iv
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(image)
        image.addConstraintsToFillView(self)
        image.setDimensions(width: self.frame.width, height: self.frame.height)
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 5
        self.layer.shadowOpacity = 0.5
    }
    required init?(coder: NSCoder) {
        fatalError("")
    }
}
