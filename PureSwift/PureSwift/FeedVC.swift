//
//  ViewController.swift
//  PureSwift
//
//  Created by Süleyman Koçak on 12.04.2020.
//  Copyright © 2020 Suleyman Kocak. All rights reserved.
//

import UIKit

class FeedVC: UICollectionViewController {
    private let reuseId = "DogCell"
    private let headerID = "DetailHeader"
    private var dogs = [UIImage]()
//    private var dogNameArray = ["igationobligationobligationobligationobligationobligationobligationobligationobligationobligationobligationobligationobligationobligationobligationobligationobligationobligationobligationobligationobligationobligationnobligationobligationobligationobligationobligationobligationobligationobligation","device","dirt","discussion","society","farmerfarmerfarmerfarmerfarmerfarmerfarmerfarmer","photo","hall","reading","region","country","literatureliteratureliteratureliteratureliteratureliteratureliteratureliteratureliteratureliteratureliteratureliteratureliterature","priority","estate","importance"]


    override func viewDidLoad(){
        super.viewDidLoad()
        for i in 1...15{
            let image = UIImage(named: String(i))
            dogs.append(image!)
        }
        for i in 1...15{
            let image = UIImage(named: String(i))
            dogs.append(image!)
        }
        for i in 1...15{
            let image = UIImage(named: String(i))
            dogs.append(image!)
        }
        for i in 1...15{
            let image = UIImage(named: String(i))
            dogs.append(image!)
        }
        configureCollectionView()
    }
    func configureCollectionView(){
        collectionView.register(DogCell.self, forCellWithReuseIdentifier: reuseId)
        collectionView.register(DogHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerID)
        collectionView.backgroundColor = .white

    }


}


extension FeedVC{

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dogs.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseId, for: indexPath) as! DogCell
        cell.dogImage.image = dogs[indexPath.row]
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerID, for: indexPath) as! DogHeader
        return header
    }

}

extension FeedVC:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 3 - 7, height: view.frame.width / 3 - 7)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 0, right: 5)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height / 4 - 30)
    }
}




