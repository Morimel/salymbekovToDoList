//
//  SecondViewController.swift
//  toDoListSalymbekov
//
//  Created by Isa Melsov on 29/1/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 15, height: 10)
        layout.scrollDirection = .horizontal
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //        view.dataSource = self
        //        view.delegate = self
        view.showsHorizontalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        //        view.register(ProductsCollectionViewCell.self, forCellWithReuseIdentifier: ProductsCollectionViewCell.id)
        return view
    }()
    
    private let middleImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "вектор")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.hidesBackButton = true
        setup()
    }
    
    private func setup() {
        setupSubviews()
        setupConstraints()
    }
    
    private func setupSubviews() {
        view.addSubview(middleImage)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            middleImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            middleImage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
