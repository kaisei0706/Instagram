//
//  NewCommentViewController.swift
//  Instagram
//
//  Created by 岩田海靖 on 2020/08/08.
//  Copyright © 2020 kaisei.iwata. All rights reserved.
//

import UIKit
import FirebaseUI


class NewCommentViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var commentText: UITextView!
    @IBOutlet weak var navigationbar: UINavigationItem!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentText.text = ""
        commentText.becomeFirstResponder()
        setPostData(<#T##postData: PostData##PostData#>)
        
        // Do any additional setup after loading the view.
    }
    
    func setPostData(_ postData: PostData) {
        self.usernameLabel.text = "\(postData.name!)"
    }
        
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func commentButtonClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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

