//
//  ViewController.swift
//  AutoScrollCollectionView
//
//  Created by hikaruhara on 2021/05/15.
//

import UIKit

class ViewController: UIViewController {
    private let autoScrollCollectionView: AutoScrollCollectionView = .init()
    private let btn: UIButton = .init()
    
    override func loadView() {
        super.loadView()
        setup()
    }
    
    private func setup() {
        autoScrollCollectionView.backgroundColor = .white
        view.addSubview(autoScrollCollectionView)
        autoScrollCollectionView.frame.size = .init(width: view.bounds.width, height: 350)
        autoScrollCollectionView.center = view.center
        autoScrollCollectionView.items = [0, 1, 2, 3, 4]
        btn.addTarget(self, action: #selector(hoge), for: .touchUpInside)
        view.addSubview(btn)
        btn.setTitle("button", for: .normal)
        btn.frame = .init(x: 100, y: 100, width: 95, height: 45)
        btn.backgroundColor = .blue
    }
    
    @objc private func hoge() {
        autoScrollCollectionView.hoge()
    }
}
