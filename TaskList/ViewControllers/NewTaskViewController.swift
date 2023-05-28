//
//  NewTaskViewController.swift
//  TaskList
//
//  Created by MikhaiL on 26.05.2023.
//

import UIKit

final class NewTaskViewController: UIViewController {
    private lazy var taskTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "New Task"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var saveButton: UIButton = {
        // Set attributes for button title
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 18)
        
        // Create button
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = UIColor(named: "MilkBlue")
        buttonConfiguration.attributedTitle = AttributedString("Save Task", attributes: attributes)
        
        let button = UIButton(configuration: buttonConfiguration, primaryAction: UIAction { [unowned self] _ in
            save()
        })
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var cancelButton: UIButton = {
        // Set attributes for button title
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 18)
        
        // Create button
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = UIColor(named: "MilkRed")
        buttonConfiguration.attributedTitle = AttributedString("Cancel", attributes: attributes)
        
        let button = UIButton(configuration: buttonConfiguration, primaryAction: UIAction { [unowned self] _ in
            dismiss(animated: true)
        })
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews(taskTextField, saveButton, cancelButton)
        setConstraints()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            taskTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            taskTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            taskTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: taskTextField.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            cancelButton.topAnchor.constraint(equalTo: saveButton.bottomAnchor, constant: 20),
            cancelButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            cancelButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
    }
    
    private func save() {
        dismiss(animated: true)
    }
}







