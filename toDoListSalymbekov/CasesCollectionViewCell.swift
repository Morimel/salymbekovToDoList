//
//  CasesCollectionViewCell.swift
//  toDoListSalymbekov
//
//  Created by Isa Melsov on 29/1/24.
//

import UIKit

class CasesCollectionViewCell: UICollectionViewCell {
    
    private let casesLabels: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = ""
        view.textColor = .black
        return view
    }()
    
    static let reuseId = "id"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    private func setup() {
        setupSubviews()
        setupConstraints()
    }
    
    private func setupSubviews() {
        contentView.addSubview(casesLabels)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            casesLabels.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            casesLabels.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    func fill(with item: String) {
        casesLabels.text = item
    }
    
    override var isSelected: Bool {
         didSet {
             if isSelected {
                 self.backgroundColor = .darkGray
                 self.casesLabels.textColor = .white
             } else {
                 self.backgroundColor = .lightGray
                 self.casesLabels.textColor = .black
             }
         }
     }
         
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
    }
}
