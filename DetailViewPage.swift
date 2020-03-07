//
//  DetailViewPage.swift
//  Week 9
//
//  Created by Thomas Hinrichs on 06/03/2020.
//  Copyright © 2020 Thomas Hinrichs. All rights reserved.
//
import UIKit

class DetailViewPage: UIViewController {
    
    @IBOutlet weak var headLine: UITextView!
    @IBOutlet weak var body: UITextView!
    var rowNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let note = CloudStorage.getNoteAt(index: rowNumber)
        headLine.text = note.head
        body.text = note.body
    }
    
    @IBAction func updateButtonPressed(_ sender: UIBarButtonItem) {
        CloudStorage.updateNote(index: 0, head: "New Headline", body: "New body")
    }
    
}
