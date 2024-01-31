//
//  SecondViewController.swift
//  toDoListSalymbekov
//
//  Created by Isa Melsov on 29/1/24.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDelegate {
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 145, height: 33)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 10
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.dataSource = self
        view.delegate = self
        view.showsHorizontalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.register(CasesCollectionViewCell.self, forCellWithReuseIdentifier: CasesCollectionViewCell.reuseId)
        return view
    }()
    
    private let moreButton = UIBarButtonItem(image: UIImage(systemName: "ellipsis"), style: .plain, target: SecondViewController.self, action: #selector(moreButtonTapped))
    
    private let middleImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "вектор")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let bottomView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 7
        view.layer.shadowOpacity = 0.1
        return view
    }()
    
    private let personButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .lightGray
        view.contentHorizontalAlignment = .left
        view.setTitle("Мое", for: .normal)
        view.setTitleColor(.lightGray, for: .normal)
        view.setImage(UIImage(systemName: "person.fill"), for: .normal)
        return view
    }()
    
    private let calendarButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .lightGray
        view.contentHorizontalAlignment = .left
        return view
    }()
    
    private let noteButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .lightGray
        view.contentHorizontalAlignment = .left
        return view
    }()
    
    private let burgerButton: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = .lightGray
        view.contentHorizontalAlignment = .left
        return view
    }()
    
    private let labelsForCases: [String] = ["Все",
                                            "Работа",
                                            "Личное",
                                            "Список желаний",
                                            "День рождения"
    ]
    
    private var selectedIndexPath: IndexPath?
    
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
        view.addSubview(collectionView)
        view.addSubview(middleImage)
        view.addSubview(bottomView)
        bottomView.addSubview(personButton)
    }
    
    private func setupConstraints() {
        navigationItem.rightBarButtonItem = moreButton
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor,  constant: 20),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 13),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            collectionView.heightAnchor.constraint(equalToConstant: 110),

            middleImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            middleImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 90),
            
            personButton.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -20),
            personButton.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 5),
            personButton.heightAnchor.constraint(equalToConstant: 95),
            personButton.widthAnchor.constraint(equalToConstant: 80)

        ])
    }
    
    @objc private func moreButtonTapped() {
        
    }
}

extension SecondViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return labelsForCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CasesCollectionViewCell.reuseId, for: indexPath) as! CasesCollectionViewCell
        cell.layer.cornerRadius = 14
        cell.backgroundColor = .lightGray
        let model = labelsForCases[indexPath.item]
        cell.fill(with: model)
        return cell
    }
}

extension SecondViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item == 0 {
            return CGSize(width: 65, height: 33)
        } else if indexPath.item == 1 {
            return CGSize(width: 85, height: 33)
        } else if indexPath.item == 2 {
            return CGSize(width: 95, height: 33)
        } else {
            return CGSize(width: 155, height: 33)
        }
    }
}

