//
//  ViewController.swift
//  toDoListSalymbekov
//
//  Created by Isa Melsov on 29/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let bigLabel: UILabel = {
        let view = UILabel()
        view.text = "Добро пожаловать в To-do \nList"
        view.font = .systemFont(ofSize: 27, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .center
        view.numberOfLines = 0
        return view
    }()
    
    private let noteImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "text.book.closed.fill")
        view.tintColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let noteLabel: UILabel = {
        let view = UILabel()
        view.text = "Создавайте задачи быстро и легко"
        view.font = .systemFont(ofSize: 16, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let noteSublabel: UILabel = {
        let view = UILabel()
        view.text = "Введите задачи, подзадачи и повторяющиеся \nзадачи."
        view.font = .systemFont(ofSize: 14)
        view.numberOfLines = 0
        view.textColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let clockImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "alarm.fill")
        view.tintColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let clockLabel: UILabel = {
        let view = UILabel()
        view.text = "Напоминания о задачах"
        view.font = .systemFont(ofSize: 16, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let clockSublabel: UILabel = {
        let view = UILabel()
        view.text = "Никогда не пропустите важные дела."
        view.font = .systemFont(ofSize: 14)
        view.numberOfLines = 0
        view.textColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let cubeImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "rectangle.3.group.fill")
        view.tintColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let cubeLabel: UILabel = {
        let view = UILabel()
        view.text = "Персонализированные виджеты"
        view.font = .systemFont(ofSize: 16, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let cubeSublabel: UILabel = {
        let view = UILabel()
        view.text = "Создавайте виджеты и с легкостью \nпросматривайте свои задачи."
        view.font = .systemFont(ofSize: 14)
        view.numberOfLines = 0
        view.textColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let shirtImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "tshirt.fill")
        view.tintColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let shirtLabel: UILabel = {
        let view = UILabel()
        view.text = "Пользователькие темы"
        view.font = .systemFont(ofSize: 16, weight: .semibold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let shirtSublabel: UILabel = {
        let view = UILabel()
        view.text = "Выберите понравившуюся тему и начните \nсвой прекрасный день."
        view.font = .systemFont(ofSize: 14)
        view.numberOfLines = 0
        view.textColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let continueButton: UIButton = {
        let view = UIButton()
        view.setTitle("ПРОДОЛЖИТЬ", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = .systemBlue
        view.layer.cornerRadius = 25
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
        showOneTimeutton()
    }
    
    private func setup() {
        setupSubview()
        setupConstraints()
    }
    
    private func setupSubview() {
        view.addSubview(bigLabel)
        
        view.addSubview(noteImage)
        view.addSubview(noteLabel)
        view.addSubview(noteSublabel)
        
        view.addSubview(clockImage)
        view.addSubview(clockLabel)
        view.addSubview(clockSublabel)
        
        view.addSubview(cubeImage)
        view.addSubview(cubeLabel)
        view.addSubview(cubeSublabel)
        
        view.addSubview(shirtImage)
        view.addSubview(shirtLabel)
        view.addSubview(shirtSublabel)
        
        view.addSubview(continueButton)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            bigLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            bigLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bigLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            noteImage.topAnchor.constraint(equalTo: bigLabel.bottomAnchor, constant: 65),
            noteImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            noteImage.widthAnchor.constraint(equalToConstant: 30),
            noteImage.heightAnchor.constraint(equalToConstant: 30),
            
            noteLabel.topAnchor.constraint(equalTo: bigLabel.bottomAnchor, constant: 50),
            noteLabel.leadingAnchor.constraint(equalTo: noteImage.trailingAnchor, constant: 15),
            
            noteSublabel.topAnchor.constraint(equalTo: noteLabel.bottomAnchor, constant: 5),
            noteSublabel.leadingAnchor.constraint(equalTo: noteImage.trailingAnchor, constant: 15),
            
            clockImage.topAnchor.constraint(equalTo: noteSublabel.bottomAnchor, constant: 50),
            clockImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            clockImage.widthAnchor.constraint(equalToConstant: 30),
            clockImage.heightAnchor.constraint(equalToConstant: 30),
            
            clockLabel.topAnchor.constraint(equalTo: noteSublabel.bottomAnchor, constant: 50),
            clockLabel.leadingAnchor.constraint(equalTo: clockImage.trailingAnchor, constant: 15),
            
            clockSublabel.topAnchor.constraint(equalTo: clockLabel.bottomAnchor, constant: 5),
            clockSublabel.leadingAnchor.constraint(equalTo: clockImage.trailingAnchor, constant: 15),
            
            cubeImage.topAnchor.constraint(equalTo: clockSublabel.bottomAnchor, constant: 60),
            cubeImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            cubeImage.widthAnchor.constraint(equalToConstant: 30),
            cubeImage.heightAnchor.constraint(equalToConstant: 30),
            
            cubeLabel.topAnchor.constraint(equalTo: clockSublabel.bottomAnchor, constant: 50),
            cubeLabel.leadingAnchor.constraint(equalTo: cubeImage.trailingAnchor, constant: 15),
            
            cubeSublabel.topAnchor.constraint(equalTo: cubeLabel.bottomAnchor, constant: 5),
            cubeSublabel.leadingAnchor.constraint(equalTo: cubeImage.trailingAnchor, constant: 15),
            
            shirtImage.topAnchor.constraint(equalTo: cubeSublabel.bottomAnchor, constant: 60),
            shirtImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            shirtImage.widthAnchor.constraint(equalToConstant: 30),
            shirtImage.heightAnchor.constraint(equalToConstant: 30),
            
            shirtLabel.topAnchor.constraint(equalTo: cubeSublabel.bottomAnchor, constant: 50),
            shirtLabel.leadingAnchor.constraint(equalTo: shirtImage.trailingAnchor, constant: 15),
            
            shirtSublabel.topAnchor.constraint(equalTo: shirtLabel.bottomAnchor, constant: 5),
            shirtSublabel.leadingAnchor.constraint(equalTo: shirtImage.trailingAnchor, constant: 15),
            
            continueButton.topAnchor.constraint(equalTo: shirtSublabel.bottomAnchor, constant: 95),
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            continueButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func showOneTimeutton() {
        continueButton.addTarget(self, action: #selector(checkFowShown), for: .touchUpInside)
    }
    
    @objc private func checkFowShown() {
        let viewController = SecondViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
        UserDefaults.standard.setValue(true, forKey: "isTapped")
    }


}

