//
//  ViewController.swift
//  FirstExperience
//
//  Created by 伊東大樹 on 2018/09/09.
//  Copyright © 2018年 伊東大樹. All rights reserved.
//

import UIKit

import MapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //MapViewを生成し、表示する
        let myMapView = MKMapView()
        myMapView.frame = self.view.frame
        self.view.addSubview(myMapView)
        
        //長押しを探知する機能を追加
        //ジェスチャーの生成
        let longPressGesture = UILongPressGestureRecognizer()
        //ボタンを押したときの処理
        longPressGesture.addTarget(self, action: "longPressed:")
        myMapView.addGestureRecognizer(longPressGesture)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

