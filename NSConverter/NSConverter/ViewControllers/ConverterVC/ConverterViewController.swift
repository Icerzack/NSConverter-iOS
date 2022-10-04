//
//  ViewController.swift
//  NSConverter
//
//  Created by Max Kuznetsov on 12.09.2022.
//

import UIKit

class ConverterViewController: UIViewController {
    
    var vm: ConverterViewModel!{
        didSet{
            vm.callback = { [unowned self] viewModel in
                self.inputTextField.text = viewModel.greeting
            }
        }
    }
    
    private lazy var inputTextField: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 20
        tf.layer.borderWidth = 5
        tf.layer.borderColor = UIColor(red: 0.37, green: 0.73, blue: 0.69, alpha: 1.00).cgColor
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textAlignment = .center
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 30)
        return tf
    }()
    
    private lazy var radixTextField: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 20
        tf.layer.borderWidth = 5
        tf.layer.borderColor = UIColor(red: 0.37, green: 0.73, blue: 0.69, alpha: 1.00).cgColor
        tf.placeholder = "Radix?"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.textAlignment = .center
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 30)
        return tf
    }()
    
    private lazy var convertButton: UIButton = {
        let b = UIButton(type: .system)
        b.layer.cornerRadius = 10
        b.layer.borderWidth = 1
        b.layer.borderColor = UIColor.gray.cgColor
        b.translatesAutoresizingMaskIntoConstraints = false
        b.addTarget(self, action: #selector(run), for: .touchUpInside)
        return b
    }()
    
    @objc func run(){
        vm.implemente()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        radixTextField.delegate = self
        vm = ConverterViewModel()
        view.backgroundColor = UIColor(red: 0.17, green: 0.12, blue: 0.19, alpha: 1.00)
        
    }
    
    override func loadView() {
        super.loadView()

        view.addSubview(inputTextField)
        view.addSubview(radixTextField)
        view.addSubview(convertButton)
        
        activateConstraints()
        
    }
    
    private func activateConstraints(){
        NSLayoutConstraint.activate([
            inputTextField.topAnchor.constraint(equalTo: view.topAnchor,constant: view.bounds.height/2-50),
            inputTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -30),
            inputTextField.widthAnchor.constraint(equalToConstant: 200),
            inputTextField.heightAnchor.constraint(equalToConstant: 50),
            
            radixTextField.leftAnchor.constraint(equalTo: inputTextField.rightAnchor, constant: 20),
            radixTextField.topAnchor.constraint(equalTo: inputTextField.topAnchor),
            radixTextField.widthAnchor.constraint(equalToConstant: 50),
            radixTextField.heightAnchor.constraint(equalToConstant: 50),
            
            convertButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            convertButton.widthAnchor.constraint(equalToConstant: 100),
            convertButton.heightAnchor.constraint(equalToConstant: 50),
            convertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

