//
//  MFEViewController.swift
//  Lokalise-iOS-MFE
//
//  Created by Chia Wei Zheng Terry on 10/10/23.
//

import UIKit
import FlexLayout
import PinLayout

open class MFEViewController: UIViewController {
    
    private let rootView = UIView()
    private let label = UILabel()

    open override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .green
        self.view.addSubview(rootView)
        self.navigationController?.title = "MFE Controller"
        
        label.text = LocalizableStrings.otaKey.localized
        label.flex.markDirty()
        
        rootView.flex.direction(.column).define { flex in
            flex.addItem(label).height(100).width(300).marginTop(300).marginLeft(50)
        }
        
        rootView.flex.layout()
    }
    
    open override func viewWillLayoutSubviews() {
        rootView.pin.left().right().top().bottom()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
