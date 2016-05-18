//
//  CameraViewController.swift
//  Final Assessment Q5
//
//  Created by WuKwok Ho on 17/5/2016.
//  Copyright © 2016 Wu Kwok Ho. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    

    @IBOutlet weak var cameraImage: UIImageView!
    
    @IBOutlet weak var dataTextfield: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var imagePicker: UIImagePickerController?
    @IBAction func confirmBtn(sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(.Camera){
            imagePicker = UIImagePickerController()
            imagePicker?.sourceType = .Camera
            imagePicker?.delegate = self
            self.presentViewController(imagePicker!, animated: true, completion: nil)
            
        }
    }
    
    
    func imagePickerController(picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : AnyObject]) {

        let image = info["UIImagePickerControllerOriginalImage"]
        self.cameraImage.image = image as? UIImage
        UIImageWriteToSavedPhotosAlbum(self.cameraImage.image!, nil, nil, nil)
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    
  

}
