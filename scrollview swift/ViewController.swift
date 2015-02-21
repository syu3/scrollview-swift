//
//  ViewController.swift
//  scrollview swift
//
//  Created by 加藤 周 on 2015/02/21.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var img1 = UIImage(named:"IMG_0604.JPG");
        let img2 = UIImage(named:"IMG_0582.JPG");
        let img3 = UIImage(named:"IMG_0585.JPG");
        
        //UIImageViewにUIIimageを追加
        var imageView1 = UIImageView(image:img1)
        let imageView2 = UIImageView(image:img2)
        let imageView3 = UIImageView(image:img3)
        
        //UIScrollViewを作成します
        let scrView = UIScrollView()
        
        //表示位置 + 1ページ分のサイズ
        scrView.frame = CGRectMake(50, 50, 100, 75)
        
        //全体のサイズ
        scrView.contentSize = CGSizeMake(100*3, 75)
        
        //UIImageViewのサイズと位置を決めます
        //左右に並べる
        imageView1.frame = CGRectMake(0, 0, 100, 75)
        imageView2.frame = CGRectMake(100, 0, 100, 75)
        imageView3.frame = CGRectMake(200, 0, 100, 75)
        
        //UIImageViewのサイズと位置を決めます
        //上下に並べる
        //imageView1.frame = CGRectMake(0, 0, 240, 240)
        //imageView2.frame = CGRectMake(0, 240, 240, 240) //変更箇所
        //imageView3.frame = CGRectMake(0, 480, 240, 240) //変更箇所
        
        //viewに追加します
        self.view.addSubview(scrView)
        scrView.addSubview(imageView1)
        scrView.addSubview(imageView2)
        scrView.addSubview(imageView3)
        
        // １ページ単位でスクロールさせる
        scrView.pagingEnabled = true
        
        //scroll画面の初期位置
        scrView.contentOffset = CGPointMake(0, 0);
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

