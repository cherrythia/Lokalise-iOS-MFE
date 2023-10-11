//
//  ViewController.swift
//  Lokalise-iOS-MFE-Demo
//
//  Created by Chia Wei Zheng Terry on 11/10/23.
//

import UIKit
import PinLayout
import FlexLayout
import RxSwift
import RxCocoa
import Lokalise_iOS_MFE

class ViewController: UIViewController {
    
    private let label = UILabel()
    private let rootView = UIView()
    private let button = UIButton()
    private let disposeBag = DisposeBag()
    private let mfeViewController = MFEViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(rootView)
        self.view.backgroundColor = .white
        label.text = "This is a demo to make sure the MFE is working. Please run the other repo Lokalise-iOS-Demo."
        label.numberOfLines = 0
        
        
        rootView.flex.direction(.column).define { flex in
            flex.addItem(label).height(100).width(300).marginTop(300).marginLeft(50)
            flex.addItem(button).height(50).width(200).marginTop(20).marginLeft(50)
        }
        
        rootView.flex.layout()
        
        setupButton()
    }
    
    open override func viewWillLayoutSubviews() {
        rootView.pin.left().right().top().bottom()
    }
    
    private func setupButton() {
        button.setTitle("Next", for: .normal)
        button.backgroundColor = .blue
        button.rx.tap.bind { [unowned self] _ in
            print("This is clicked")
            self.navigationController?.pushViewController(mfeViewController, animated: true)
        }.disposed(by: disposeBag)
    }


}

