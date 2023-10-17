//
//  ViewController.swift
//  FindFlower
//
//  Created by Nikita Hasan Kafes on 17.10.2023.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .camera
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let userPickedImage = info[UIImagePickerController.InfoKey.editedImage]
        
        imageView.image = userPickedImage as? UIImage
        
        imagePicker.dismiss(animated: true)
        
    }
    
    @IBAction func cameraPressed(_ sender: UIBarButtonItem) {
    }
    
}

