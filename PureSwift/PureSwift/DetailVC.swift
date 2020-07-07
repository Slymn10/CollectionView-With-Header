//
//  DetailVC.swift
//  PureSwift
//
//  Created by Süleyman Koçak on 19.04.2020.
//  Copyright © 2020 Suleyman Kocak. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    var image : UIImage!
    var detail : String!

    private lazy var dogImageView : UIImageView = {
        let iv = UIImageView()
        iv.layer.cornerRadius = 10
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    private let detailLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        configureUI()
    }

    func configureUI(){
        dogImageView.image = image
        detailLabel.text = detail
        view.addSubview(dogImageView)
        view.addSubview(detailLabel)

        dogImageView.setDimensions(width: 200, height: 200)
        dogImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor, paddingTop: 100)
        detailLabel.anchor(top: dogImageView.bottomAnchor,left: view.leftAnchor,right: view.safeAreaLayoutGuide.rightAnchor,paddingTop: 50,paddingLeft: 10,paddingRight: 10,height: 100)


    }
    


}
