//
//  ExploreViewController.swift
//  Instagram
//
//  Created by Cemalhan Alptekin on 1.04.2024.
//

import UIKit

class ExploreViewController: UIViewController {
    
    private let searchBar: UISearchBar = {
       let searchBar = UISearchBar()
        searchBar.backgroundColor = .secondarySystemBackground
        
       return searchBar
    }()
    
    private var collectionView: UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        navigationController?.navigationBar.topItem?.titleView = searchBar
    }

}

extension ExploreViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}
